Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OyUh9-0005A1-4C
	for barebox@lists.infradead.org; Wed, 22 Sep 2010 19:09:32 +0000
Received: by wyb38 with SMTP id 38so968924wyb.36
	for <barebox@lists.infradead.org>; Wed, 22 Sep 2010 12:09:29 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1285151785-507-1-git-send-email-plagnioj@jcrosoft.com>
	<20100922123613.GD23406@pengutronix.de>
	<87d3s5by0y.fsf@macbook.be.48ers.dk>
	<20100922160834.GG23406@pengutronix.de>
Date: Wed, 22 Sep 2010 21:09:10 +0200
In-Reply-To: <20100922160834.GG23406@pengutronix.de> (Sascha Hauer's message
	of "Wed, 22 Sep 2010 18:08:34 +0200")
Message-ID: <878w2tbnop.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH] commands/crc32: add compare 2 files crc
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

 >> It's sometimes interesting to be able to compare a checksum with a
 >> file on the host (E.G. output of cksum/md5sum/sha1sum/..)

 Sascha> crc32 can output the crc checksum of a file using the -f
 Sascha> option. What Jean-Christophe added is an option to calculate
 Sascha> the checksum of two files (one given with -f and the other with
 Sascha> -F). I just fail to see why this must be done in a single step
 Sascha> instead of using a crc32 followed by a memcmp.

Ahh, ok - Then I don't see any reason for it.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
