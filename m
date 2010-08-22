Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OnAuC-0008E1-ON
	for barebox@lists.infradead.org; Sun, 22 Aug 2010 13:48:13 +0000
Received: by wyb34 with SMTP id 34so2810582wyb.36
	for <barebox@lists.infradead.org>; Sun, 22 Aug 2010 06:48:11 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
	<20100818151536.GF454@game.jcrosoft.org>
	<20100821102734.GN27749@pengutronix.de>
	<20100821113550.GA25293@merkur.ravnborg.org>
Date: Sun, 22 Aug 2010 15:48:07 +0200
In-Reply-To: <20100821113550.GA25293@merkur.ravnborg.org> (Sam Ravnborg's
	message of "Sat, 21 Aug 2010 13:35:50 +0200")
Message-ID: <87sk26kbc8.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH] Kconfig: sync with linux kernel v2.6.35-4771-g1787985
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

>>>>> "Sam" == Sam Ravnborg <sam@ravnborg.org> writes:

Hi,

 Sam> Current state of kconfig in v2.6.36-rc1 (which is a later version
 Sam> than the one Jean-Christophe references) is the following: -
 Sam> savedefconfig bugs fixed - reading a minimal config (created by
 Sam> savedefconfig) fixed

 Sam> The nconfig issues I mentioned regarding search are
 Sam> not yet ready.
 Sam> And I am not sure if they go in until next merge window.

 Sam> Likewise there are patches in the works that will ease
 Sam> the integration with external projects.
 Sam> The patches does the following:
 Sam> - Allows the prefix to be configured (CONFIG_ => BR2_)
 Sam> - No more hardcoded "kernel" strings
 Sam> - mainmenu in the config file is used as headline

 Sam> These patches will go in during next merge window if they
 Sam> are finished in due time.

Nice! FYI, I'm planning on syncing kconfig for buildroot after the
2010.08 release.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
