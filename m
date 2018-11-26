Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRGVG-0008Gg-Ve
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 13:00:44 +0000
References: <20181126091807.19398-1-o.rempel@pengutronix.de>
 <20181126091807.19398-2-o.rempel@pengutronix.de>
 <20181126152502.d650686785e90b20b3264e28@gmail.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <ae0842ae-292f-d4ae-0cc7-7ac45f4137c7@pengutronix.de>
Date: Mon, 26 Nov 2018 14:00:27 +0100
MIME-Version: 1.0
In-Reply-To: <20181126152502.d650686785e90b20b3264e28@gmail.com>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 01/10] images: piggy: use "a" instead of #alloc flag
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi!

On 26.11.18 13:25, Antony Pavlov wrote:
> On Mon, 26 Nov 2018 10:17:58 +0100
> Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> 
> Hi!
> 
> I can't apply this patch to the master branch 'FIT: support hash-1/signature-1 nodes in signature check' (6bacf7bd8df)
> 
> Here is git-am error log:
> 
> Applying: images: piggy: use "a" instead of #alloc flag
> error: images/piggy.S: does not exist in index
> Patch failed at 0001 images: piggy: use "a" instead of #alloc flag
> hint: Use 'git am --show-current-patch' to see the failed patch
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".

This patch depends on:
[PATCH 0/3] ARM: images: Use piggydata

Currently not in next, Sasha will merge it this week.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
