Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QMQWS-0002TG-3Q
	for barebox@lists.infradead.org; Tue, 17 May 2011 20:05:41 +0000
Received: by wyb28 with SMTP id 28so841384wyb.36
	for <barebox@lists.infradead.org>; Tue, 17 May 2011 13:05:38 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1305634253-29141-1-git-send-email-jacmet@sunsite.dk>
	<20110517123013.GF2737@game.jcrosoft.org>
	<87ei3xh3qp.fsf@macbook.be.48ers.dk>
	<20110517170923.GG30963@pengutronix.de>
Date: Tue, 17 May 2011 22:05:34 +0200
In-Reply-To: <20110517170923.GG30963@pengutronix.de> (Sascha Hauer's message
	of "Tue, 17 May 2011 19:09:23 +0200")
Message-ID: <87oc31f5yp.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH] commands: add md5/sha1/sha256sum commands using the
	digest api
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

Hi,

 >> commands/mem.c: buf = xmalloc(RW_BUF_SIZE);

 Sascha> And I am perfectly fine with this at least for fixed small length
 Sascha> allocations. And I consider 4096 bytes small enough.

Ok, good.

 >> Maybe. I wanted something automatic rather than a series of strcmp
 >> checks, but feel free to suggest something else.

 Sascha> You could use three different functions called by the command
 Sascha> descriptors and pass a string with the digest name to do_digest.

Ok, will change.

 Jean-Christophe> do we really need to stop if ine of them is not availlable

 >> I don't feel strongly about it, but it seems the simplest solution.

 Sascha> How about printing an error and continue? That's what my host md5sum
 Sascha> does.

Ok, will change.

 Jean-Christophe> and we should check the getc to be able to interrupt it
 >> 
 >> crc doesn't do that either, but ok - I can add a ctrlc() check in the
 >> main loop.

 Sascha> It's good practice. It's nice being able to interrupt if this
 Sascha> command is accidently being called on a veray large file.

Ok, will change.

I'll send a v2 shortly.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
