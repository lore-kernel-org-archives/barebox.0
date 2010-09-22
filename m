Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OyRCk-0006Oh-0M
	for barebox@lists.infradead.org; Wed, 22 Sep 2010 15:25:54 +0000
Received: by wyb38 with SMTP id 38so687188wyb.36
	for <barebox@lists.infradead.org>; Wed, 22 Sep 2010 08:25:52 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1285151785-507-1-git-send-email-plagnioj@jcrosoft.com>
	<20100922123613.GD23406@pengutronix.de>
Date: Wed, 22 Sep 2010 17:25:49 +0200
In-Reply-To: <20100922123613.GD23406@pengutronix.de> (Sascha Hauer's message
	of "Wed, 22 Sep 2010 14:36:13 +0200")
Message-ID: <87d3s5by0y.fsf@macbook.be.48ers.dk>
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

 Sascha> On Wed, Sep 22, 2010 at 12:36:25PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
 >> add -F options to compare to file crc
 >> 
 >> it's usefull to compare what you flash in a partition

 Sascha> Why don't you use memcmp?

 Sascha> memcmp -s uImage -d /dev/nand0.kernel.bb 0 0

It's sometimes interesting to be able to compare a checksum with a file
on the host (E.G. output of cksum/md5sum/sha1sum/..)

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
