import matplotlib.pyplot as plt


def create_pie_chart(options):
    figure = plt.figure()
    axes = figure.add_subplot(1, 1, 1)

    axes.pie(
        [option[1] for option in options],
        labels=[option[0] for option in options],
        autopct="%1.1f%%"
    )

    return figure
def create_bar_chat(polls):
    figure = plt.figure()
    axes = figure.add_subplot(1, 1, 1)

    axes.bar(
        range(len(polls)),
        [poll[1] for poll in polls],
        tick_label=[poll[0] for poll in polls]
    )
    return figure
