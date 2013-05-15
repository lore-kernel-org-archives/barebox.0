Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x229.google.com ([2a00:1450:4008:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UchzF-0000hv-S7
 for barebox@lists.infradead.org; Wed, 15 May 2013 20:07:46 +0000
Received: by mail-bk0-f41.google.com with SMTP id jc3so1238672bkc.14
 for <barebox@lists.infradead.org>; Wed, 15 May 2013 13:07:23 -0700 (PDT)
Message-ID: <5193EAF6.2000605@gmail.com>
Date: Wed, 15 May 2013 22:07:18 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368603396-27887-1-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1368603396-27887-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: Re: [PATCHv2 00/10] kwbimage improvements, Kirkwood support
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org, Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On 05/15/13 09:36, Thomas Petazzoni wrote:
> Hello,
>
> This is a resend of yesterday patch set, rebased on top of the current
> 'next' branch. I have dropped the commits from Sebastian, since they
> have been merged by Sascha, and I've added one commit that fixes the
> SolidRun CuBox kwbimage.cfg to remove some lines that are no longer
> necessary after the kwbimage improvements that are introduced by this
> patch set.
>
> Best regards,
>
> Thomas
>
> Thomas Petazzoni (10):
>    scripts/kwbimage: add a new function image_count_options()
>    scripts/kwbimage: add a few sanity checks
>    scripts/kwbimage: make the v0 image creation more flexible
>    scripts/kwbimage: simplify the v1 image creation
>    scripts/kwbimage: make image_boot_mode_id() return -1 on failure
>    scripts/kwbimage: add support for NAND ECC and page size header
>      fields
>    arm: mvebu: add Feroceon CPU type
>    arm: mvebu: initial support for Marvell Kirkwood SoCs
>    arm: mvebu: add basic support for Globalscale Guruplug board
>    arm: mvebu: remove useless lines in kwbimage.cfg for CuBox

Thomas,

I tested barebox-next with all patches applied on Dove and Armada 370.
So you get my

Tested-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

for all patches not directly related to Kirkwood (patches 7-9).

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
