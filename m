Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jr21N-0000rz-Qd
 for barebox@lists.infradead.org; Thu, 02 Jul 2020 16:25:10 +0000
Received: by mail-lj1-x233.google.com with SMTP id d17so18292911ljl.3
 for <barebox@lists.infradead.org>; Thu, 02 Jul 2020 09:25:08 -0700 (PDT)
MIME-Version: 1.0
References: <925732743.424285.1592919941556@mail.vodafone.de>
 <CAOMZO5AeTg2afd+xVmNr=GxOM=s7qdzUhMqz2AHpTx_MPGWbPg@mail.gmail.com>
 <245646662.425432.1592925096458@mail.vodafone.de>
 <d999acb9-ed34-7b02-42cf-675a152ddee3@pengutronix.de>
 <517310923.70062.1593427992397@mail.vodafone.de>
 <595dc8c8-09c8-81ad-d730-23781e207cbd@pengutronix.de>
 <429834562.114102.1593444620511@mail.vodafone.de>
 <aac7feb5-604f-2914-bfbd-75f0271401ad@pengutronix.de>
 <1874617325.108865.1593446626706@mail.vodafone.de>
 <21c2fc40-e385-b05e-6392-55ad219597da@pengutronix.de>
 <1036676243.111725.1593448425601@mail.vodafone.de>
 <CAOMZO5Cxa6Yk-uWUummRhNVQbLHvduCZQM9djxXNG683GQ4gRw@mail.gmail.com>
 <473645456.227984.1593597168773@mail.vodafone.de>
 <b095fd3c-7cda-1394-ba4d-6dd882606920@pengutronix.de>
 <936755248.7359.1593703689870@mail.vodafone.de>
In-Reply-To: <936755248.7359.1593703689870@mail.vodafone.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 2 Jul 2020 13:24:55 -0300
Message-ID: <CAOMZO5Ap8jDXJrkhjWVM0MF6yNk-gtzYzz6PWMOAxNpE-HYU+Q@mail.gmail.com>
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
Cc: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Hi Giorgio,

On Thu, Jul 2, 2020 at 12:28 PM Giorgio Dal Molin
<giorgio.nicole@arcor.de> wrote:

> What I've found is that if I put the endless loop right at the end of
> imx21_soc_reset(), after the imxwd_write's, then the reboot process becomes
> reliable.

Just curious: are you able to reboot reliably if you issue a "reboot"
command from the Linux prompt?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
