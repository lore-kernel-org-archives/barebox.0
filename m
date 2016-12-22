Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cK7af-0005Pk-6A
 for barebox@lists.infradead.org; Thu, 22 Dec 2016 17:55:42 +0000
Date: Thu, 22 Dec 2016 18:55:14 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20161222175514.GA17658@ravnborg.org>
References: <1482356321-19996-1-git-send-email-c.hemp@phytec.de>
 <20161221222923.GB24177@ravnborg.org>
 <8e786abe-cd51-63a4-9dd6-b83360b3f928@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e786abe-cd51-63a4-9dd6-b83360b3f928@phytec.de>
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
Subject: Re: [PATCH] mtd: nand_mxs: fix NAND error when change clk rate
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

Hi Christian,

thanks for the quick reply.

> >Can you give any hints that makes it simpler to verify your fix or anything?
> To reproduce the issue and test the fix I reseted the board in a loop.
> For this I added 'reset' to /env/bin/init. With 'reset" in /env/bin/init I
> saw the issue after 1 - 2 Minutes.
> Also I have done 1000 power cuts and resets without any error in our
> test rack.
> 
> power cut:
> 1. start barebox to prompt
> 2. power cut
> 
> soft reset:
> 1. start barebox to prompt
> 2. reset

We have deployed an updated barebox in our test setup that do
all our ON/OFF testing.
A quick grep from the serial logs shows that we have seen this
error message much more often than I originally anticipated.
So I expect to have feedback already tomorrow.

From your information I am quite positive.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
