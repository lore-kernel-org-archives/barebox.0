Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f41.google.com ([74.125.82.41])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QLMiz-00044S-4I
	for barebox@lists.infradead.org; Sat, 14 May 2011 21:50:14 +0000
Received: by wwi18 with SMTP id 18so1554438wwi.0
	for <barebox@lists.infradead.org>; Sat, 14 May 2011 14:50:10 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <04EB6ACBB90C8844892BE0B9828F13C8018734BA036D@SRVSBS.airtag.local>
	<20110513172252.GZ30963@pengutronix.de>
	<87d3jlkbb0.fsf@macbook.be.48ers.dk>
	<20110514171607.GA30963@pengutronix.de>
Date: Sat, 14 May 2011 23:50:07 +0200
In-Reply-To: <20110514171607.GA30963@pengutronix.de> (Sascha Hauer's message
	of "Sat, 14 May 2011 19:16:07 +0200")
Message-ID: <874o4xj6k0.fsf@macbook.be.48ers.dk>
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
Subject: Re: crc32 command
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

Hi,

 >> The crc32 command is largely legacy from u-boot. Would there be interest
 >> in a cksum command (it's afaik just like the normal crc32 except it also
 >> uses the length) or md5/sha1/sha256sum? We have all the infrastructure,
 >> so it should be easy to add.

 Sascha> md5sum would be very useful. Would it add much to the binary space?

I don't think so. I did a quick little proof of concept implementation
(which would work for any algorithm supported by the digest stuff) and
it ended up like:

 size lib/md5.o common/digest.o commands/md5.o
   text	   data	    bss	    dec	    hex	filename
   2841	    152	      0	   2993	    bb1	lib/md5.o
    339	     16	      0	    355	    163	common/digest.o
    969	      0	      0	    969	    3c9	commands/md5.o

So less than 1K if you already use md5/digest for something else,
otherwise ~4K.

I'll clean up the code a bit more and send a patch.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
