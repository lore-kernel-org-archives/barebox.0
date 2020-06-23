Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnjMV-0004mz-QU
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:53:21 +0000
Received: by mail-lj1-x22f.google.com with SMTP id e4so23527004ljn.4
 for <barebox@lists.infradead.org>; Tue, 23 Jun 2020 06:53:17 -0700 (PDT)
MIME-Version: 1.0
References: <925732743.424285.1592919941556@mail.vodafone.de>
In-Reply-To: <925732743.424285.1592919941556@mail.vodafone.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 23 Jun 2020 10:53:01 -0300
Message-ID: <CAOMZO5AeTg2afd+xVmNr=GxOM=s7qdzUhMqz2AHpTx_MPGWbPg@mail.gmail.com>
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
Subject: Re: reset / watchdog on an imx7d soc
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Giorgio,

On Tue, Jun 23, 2020 at 10:48 AM Giorgio Dal Molin
<giorgio.nicole@arcor.de> wrote:

> Can anyone confirm that the current barebox is able to restart an imx7 soc without
> using external signals ?

You really need to use the WDOG_B pin to trigger the reset due to an
i.MX7 erratum.

Please check the i.MX7 errata document:
https://www.nxp.com/docs/en/errata/IMX7DS_3N09P.pdf

Search for "e10574 Watchdog: A watchdog timeout or software trigger
will not reset the SOC"

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
