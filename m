Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pf6JW-0003jq-QG
	for barebox@lists.infradead.org; Tue, 18 Jan 2011 07:49:20 +0000
Received: by wyf22 with SMTP id 22so5755148wyf.36
	for <barebox@lists.infradead.org>; Mon, 17 Jan 2011 23:48:57 -0800 (PST)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1295259766-19301-1-git-send-email-s.hauer@pengutronix.de>
	<1295259766-19301-4-git-send-email-s.hauer@pengutronix.de>
	<201101171159.31154.jbe@pengutronix.de>
	<201101180949.35371.marc@cpdesign.com.au>
Date: Tue, 18 Jan 2011 08:48:50 +0100
In-Reply-To: <201101180949.35371.marc@cpdesign.com.au> (Marc Reilly's message
	of "Tue, 18 Jan 2011 09:49:35 +1100")
Message-ID: <87y66i8xel.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH 3/4] ARM i.MX28 tx28: use a fixed framebuffer address
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

>>>>> "Marc" == Marc Reilly <marc@cpdesign.com.au> writes:

Hi,

 Marc> Purely out of interest, what is the advantage/necessity for
 Marc> having the frame buffer at a fixed address?

Presumably to be able to reuse the buffer in Linux for flicker free
booting.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
