Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x230.google.com ([2607:f8b0:4001:c06::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8RiY-00078u-ND
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 11:55:03 +0000
Received: by iofo67 with SMTP id o67so40294174iof.3
 for <barebox@lists.infradead.org>; Mon, 14 Dec 2015 03:54:41 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1450093411-13885-1-git-send-email-s.hauer@pengutronix.de>
References: <1450093411-13885-1-git-send-email-s.hauer@pengutronix.de>
Date: Mon, 14 Dec 2015 09:54:40 -0200
Message-ID: <CAOMZO5BMFcccs=NBv2_4e40-MCKQmdoximVNHp4vDtCdAoMSWA@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/7] hwclock command: use format like the Linux tool does
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Dec 14, 2015 at 9:43 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> +const char *time_str(struct rtc_time *tm)
> +{
> +       const char *weekdays[] = { "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun" };
> +       const char *months[] = { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug",
> +                                "Sep", "Okt", "Nov", "Dec" };

The 'Okt' one looks like German ;-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
