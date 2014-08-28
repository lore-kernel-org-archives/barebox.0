Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XMyFa-0005Yw-Ec
 for barebox@lists.infradead.org; Thu, 28 Aug 2014 11:52:23 +0000
Received: by mail-wi0-f178.google.com with SMTP id r20so723284wiv.17
 for <barebox@lists.infradead.org>; Thu, 28 Aug 2014 04:51:58 -0700 (PDT)
Date: Thu, 28 Aug 2014 13:51:56 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140828115154.GB1752@omega>
References: <98034ceb4fe0a107abef0beb3fd1380c@linux-source.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98034ceb4fe0a107abef0beb3fd1380c@linux-source.de>
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
Subject: Re: [PATCH] mtd: add mtdram device (which build mtd over ram area -
 useful for FRAM oder MRAM)
To: basti@linux-source.de
Cc: barebox@lists.infradead.org

Hi Sebastian,

On Thu, Aug 28, 2014 at 10:59:51AM +0200, basti@linux-source.de wrote:
> This adds support for MTD in RAM devices (like FRAM or MRAM).
> 
> Signed-off-by: Sebastian Block <basti@linux-source.de>
> 

for what do you need something like this?

If for testing I thought about to porting nandsim to barebox [0].

I was only a RFC and I forget to bring this mainline, because I can't
validate that the nandsim behaviour is correct.

- Alex

[0] http://lists.infradead.org/pipermail/barebox/2012-October/010817.html

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
