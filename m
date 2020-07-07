Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx012.vodafonemail.xion.oxcs.net ([153.92.174.90])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsgXb-0006zO-Ad
 for barebox@lists.infradead.org; Tue, 07 Jul 2020 05:53:16 +0000
Date: Tue, 7 Jul 2020 07:52:58 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <1980197793.159348.1594101178364@mail.vodafone.de>
In-Reply-To: <CAOMZO5Ap8jDXJrkhjWVM0MF6yNk-gtzYzz6PWMOAxNpE-HYU+Q@mail.gmail.com>
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
 <CAOMZO5Ap8jDXJrkhjWVM0MF6yNk-gtzYzz6PWMOAxNpE-HYU+Q@mail.gmail.com>
MIME-Version: 1.0
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
To: Fabio Estevam <festevam@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi,

> On July 2, 2020 at 6:24 PM Fabio Estevam <festevam@gmail.com> wrote:
> 
> 
> Hi Giorgio,
> 
> On Thu, Jul 2, 2020 at 12:28 PM Giorgio Dal Molin
> <giorgio.nicole@arcor.de> wrote:
> 
> > What I've found is that if I put the endless loop right at the end of
> > imx21_soc_reset(), after the imxwd_write's, then the reboot process becomes
> > reliable.
> 
> Just curious: are you able to reboot reliably if you issue a "reboot"
> command from the Linux prompt?
> 

yesterday I ran a long reboot loop test:

 system start => kernel / userland boot => reboot

and at least captured a hang.

So, from what I can see, a kernel reboot hang is just as likely as a bootloader's
one.

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
