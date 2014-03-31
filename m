Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from homie.mail.dreamhost.com ([208.97.132.208]
 helo=homiemail-a1.g.dreamhost.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUdvt-00040O-Mb
 for barebox@lists.infradead.org; Mon, 31 Mar 2014 15:15:30 +0000
Date: Mon, 31 Mar 2014 23:14:59 +0800
From: Nur Hussein <hussein@unixcat.org>
Message-ID: <20140331151459.GA9544@radagast>
References: <20140331130418.GA3113@radagast>
 <20140331150920.GP17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140331150920.GP17250@pengutronix.de>
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
Subject: Re: Building and booting Barebox on Pandaboard
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

On Mon, Mar 31, 2014 at 05:09:20PM +0200, Sascha Hauer wrote:
> Due to updates the panda_*defconfig configs currently do not build for
> the panda board. Please either manually call a make menuconfig and set
> the config back to panda:
> 
> System Type  --->
>   OMAP Features  --->
>     Select OMAP board (Texas Instrument's Panda Board)  --->
> 
> Or apply the patch I just sent to the list:

Thanks for the heads up. I shall try it and see if it works.

> ARM: Panda: Fix board selection in panda defconfig files
> 
> I'm not 100% sure the ES variant is supported. What was the difference
> between the ES and the regular board again? Does the ES have a omap4460
> whereas the regular board has a omap4430? If yes then the ES should be
> supported.

Yes, this is indeed the case.

Thank you for the reply and the patch.

-- 
Nur Hussein
http://unixcat.org

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
