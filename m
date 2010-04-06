Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f213.google.com ([209.85.219.213])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1Nz2aw-0001Jd-Ta
	for barebox@lists.infradead.org; Tue, 06 Apr 2010 06:49:07 +0000
Received: by ewy5 with SMTP id 5so1144826ewy.20
	for <barebox@lists.infradead.org>; Mon, 05 Apr 2010 23:49:03 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <007101cad0b8$eba13150$c2e393f0$@cpdesign.com.au>
	<20100331121903.GU2241@pengutronix.de>
	<003d01cad47c$3cc272d0$b6475870$@cpdesign.com.au>
	<20100406063007.GA3688@pengutronix.de>
Date: Tue, 06 Apr 2010 08:48:59 +0200
In-Reply-To: <20100406063007.GA3688@pengutronix.de> (Sascha Hauer's message of
	"Tue, 6 Apr 2010 08:30:07 +0200")
Message-ID: <87bpdxrs84.fsf@macbook.be.48ers.dk>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Splash screen on mx35 3 stack
To: 'Sascha Hauer' <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>>>>> "Sascha" == 'Sascha Hauer' <s.hauer@pengutronix.de> writes:

Hi,

 Sascha> Same situation here, so I added the following patch to make this clear:

 >> From 86d1c12dd33b538dd2b3fc750d869e9defa2cd6e Mon Sep 17 00:00:00 2001
 Sascha> From: Sascha Hauer <s.hauer@pengutronix.de>
 Sascha> Date: Tue, 6 Apr 2010 08:28:00 +0200
 Sascha> Subject: [PATCH] i.MX35 3stack: Add a comment about the nonworking display

 Sascha>   * Generic display, shipped with the PDK
 Sascha> + * FIXME: The power for the display is driven by the mc9s08. This is
 Sascha> + * currently not done in software, for the display to work you have to
 Sascha> + * short ciruit pins 2 and 3 of q6 on the personality board, or better,

s/ciruit/circuit/

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
