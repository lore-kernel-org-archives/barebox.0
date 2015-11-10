Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwDuh-0008HJ-VL
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 18:45:04 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 10 Nov 2015 18:44:38 +0000
Message-ID: <1447181079.4553.82.camel@rtred1test09.kymeta.local>
References: <1447065171-31571-1-git-send-email-pmamonov@gmail.com>
 <1447094995.4553.50.camel@rtred1test09.kymeta.local>
 <20151110080423.GE8526@pengutronix.de>
In-Reply-To: <20151110080423.GE8526@pengutronix.de>
Content-Language: en-US
Content-ID: <3E4C355AFCA7A94C8ECBE47E684A3F82@kymetacorp.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] common: filetype: do not redetect MBR-type devices as a
 FAT-type
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Peter Mamonov <pmamonov@gmail.com>

On Tue, 2015-11-10 at 09:04 +0100, Sascha Hauer wrote:

> From 98fb34f2aa271138eab28a36aec733fe6572339c Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Tue, 10 Nov 2015 08:58:16 +0100
> Subject: [PATCH] ARM: omap: Use correct device to mount on /boot
> 
> The current code tests if a partition (i.e. disk0.0) exists and instead
> of mounting boot from this partition it uses the whole device (disk0).
> This only works because the the FAT code accepts a MBR as input and
> automatically skips it.

I agree, this should fix it.

> 
> Let the code use the partition to mount /boot instead as it was
> intended. We don't have to stat() the partition device, since this
> error will be caught by mount() anyway, so remove the unnecessary
> stat().

There are copies of this code in rpi.c and socfpga/generic.c.  They
don't suffer from the whole disk flaw, but they do stat() first as well.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
