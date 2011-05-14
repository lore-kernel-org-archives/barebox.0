Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QL8zC-00086K-2t
	for barebox@lists.infradead.org; Sat, 14 May 2011 07:10:03 +0000
Received: by wyb28 with SMTP id 28so3046790wyb.36
	for <barebox@lists.infradead.org>; Sat, 14 May 2011 00:10:00 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <04EB6ACBB90C8844892BE0B9828F13C8018734BA036D@SRVSBS.airtag.local>
	<20110513172252.GZ30963@pengutronix.de>
Date: Sat, 14 May 2011 09:09:55 +0200
In-Reply-To: <20110513172252.GZ30963@pengutronix.de> (Sascha Hauer's message
	of "Fri, 13 May 2011 19:22:52 +0200")
Message-ID: <87d3jlkbb0.fsf@macbook.be.48ers.dk>
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

 >> How can I use crc32 to verify the files I transfer?

 Sascha> The algorithms differ, so cksum is not usable here. Got curious
 Sascha> myself and looked around in the net. the zip tool is usable for
 Sascha> this:

 Sascha> zip test.zip barebox.bin; unzip -lv test.zip

 Sascha> Ok, this sucks, but there is also a standalone program (haven't tested
 Sascha> this). See here:

 Sascha> http://docwiki.gumstix.org/index.php/Calculating_32_bit_CRCs

The crc32 command is largely legacy from u-boot. Would there be interest
in a cksum command (it's afaik just like the normal crc32 except it also
uses the length) or md5/sha1/sha256sum? We have all the infrastructure,
so it should be easy to add.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
