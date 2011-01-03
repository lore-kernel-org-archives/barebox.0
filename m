Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PZuDp-0000KI-FL
	for barebox@lists.infradead.org; Mon, 03 Jan 2011 23:53:58 +0000
Received: by eyd9 with SMTP id 9so7068247eyd.36
	for <barebox@lists.infradead.org>; Mon, 03 Jan 2011 15:53:48 -0800 (PST)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <20101230034811.GS19266@game.jcrosoft.org>
	<1293713374-3476-1-git-send-email-franck.jullien@gmail.com>
	<20110103114144.GL6017@pengutronix.de>
	<AANLkTikS9h1PgeLFAUWPNwoZc+eaJri48q6VQ92XiNRm@mail.gmail.com>
	<20110103135058.GB24408@pengutronix.de>
Date: Tue, 04 Jan 2011 00:53:43 +0100
In-Reply-To: <20110103135058.GB24408@pengutronix.de> (Sascha Hauer's message
	of "Mon, 3 Jan 2011 14:50:58 +0100")
Message-ID: <87wrmlbl2w.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH] Add an option to set a board specific banner
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

 Sascha> Ok, I can see your problem. I think we should rather define a
 Sascha> board specific function to display a banner than a string, so
 Sascha> something like:

 Sascha> config BOARD_BANNER
 Sascha> 	bool

 Sascha> #ifdef CONFIG_BOARD_BANNER
 Sascha> 	display_board_banner();
 Sascha> #else
 Sascha> 	printf(RELOC("Board: " CONFIG_BOARDINFO "\n"));
 Sascha> #endif

Even better, stick:

#ifdef CONFIG_BOARD_BANNER
extern void display_board_banner(void);
#else
static inline void display_board_banner(void)
{
        printf(RELOC("Board: " CONFIG_BOARDINFO "\n"));
}
#endif

And get rid of the #ifdef in the C file.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
