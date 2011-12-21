Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RdNx4-0003cX-0P
 for barebox@lists.infradead.org; Wed, 21 Dec 2011 15:19:31 +0000
From: Teresa Gamez <T.Gamez@phytec.de>
In-Reply-To: <20111221134958.GV27267@pengutronix.de>
References: <1324467373-27201-1-git-send-email-s.hauer@pengutronix.de>
 <1324472748.18539.37.camel@lws-gamez>
 <20111221134958.GV27267@pengutronix.de>
Date: Wed, 21 Dec 2011 16:19:36 +0100
Message-ID: <1324480776.18539.107.camel@lws-gamez>
Mime-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: add board support for Phytec phyCARD-M aka pca101
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 21.12.2011, 14:49 +0100 schrieb Sascha Hauer:
> On Wed, Dec 21, 2011 at 02:05:48PM +0100, Teresa Gamez wrote:
> > Hello Sascha,
> > 
> > we want to use a different name convention for all the phyCARDs since it
> > is quite chaotic atm.
> 
> Indeed.
> 
> > Christian is working on patches for the phyCARD-M1
> > with the new name convention.
> 
> How will the new name convention look like?

The board name looks like this:

phyCARD-<generation>-<type><revision>

The phyCARD-M is called correctly phyCARD-A-M1.

The Kconfig suppose look like this:

@@ -356,6 +358,13 @@ config MACH_PCM043
 	  Say Y here if you are using Phytec's phyCORE-i.MX35 (pcm043)
equipped
 	  with a Freescale i.MX35 Processor
 
+config MACH_PCAAM1
+        bool "phyCARD-A-M1"
+        select MACH_HAS_LOWLEVEL_INIT
+        help
+           Say Y here if you are using Phytec's phyCARD-A-M1 (pca-a-m1)
equipped
+           with a Freescale i.MX35 Processor
+
 config MACH_GUF_CUPID
 	bool "Garz+Fricke Cupid"
 	select MACH_HAS_LOWLEVEL_INIT
 
Board code name:
a/arch/arm/boards/phycard-a-m1/pca-a-m1.c

Function names (example):
static int pcaam1_init_devices(void)

defconfig:
arch/arm/configs/phycard_a_m1_defconfig

Teresa

> 
> Sascha
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
