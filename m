Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIqUG-0006oA-2v
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 09:13:41 +0000
Date: Mon, 30 Mar 2020 11:13:31 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20200330091331.y6jau77fimagy2ig@tellis.lin.mbt.kalray.eu>
References: <20200326183304.16531-1-jmaselbas@kalray.eu>
 <20200326183304.16531-5-jmaselbas@kalray.eu>
 <20200330052629.GT27288@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330052629.GT27288@pengutronix.de>
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
Subject: Re: [PATCH v2 4/4] usb: gadget: dfu: Fix DFU mode interface descriptor
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Mon, Mar 30, 2020 at 07:26:30AM +0200, Sascha Hauer wrote:
> DFU stopped working for me quite a while ago and I tracked it down to
> this dfu-util commit:
> 
> | commit 377f6f136d3369529f44578acaeee82d7c7d7af9
> | Author: Paul Fertser <fercerpav@gmail.com>
> | Date:   Sun Aug 10 14:26:05 2014 +0400
> | 
> |     dfu_util: Ignore alt_index/alt_name specification in runtime mode
> |     
> |     When the device is in runtime mode it needs to be reset first into DFU
> |     mode for the list of alternate settings to appear, so unless it is
> |     already in the right mode, matching on alt setting number or name
> |     should be skipped.
> |     
> |     Fixes regression on OpenMoko Freerunner.
> |     
> |     Signed-off-by: Paul Fertser <fercerpav@gmail.com>
> 
> Are you using a recent dfu-util version? Is your patch the fix for this
> commit?
Yes, I am using dfu-util version 0.9. I didn't search in dfu-util
commit history but yeah my patch seems to be a fix for this commit.

The current DFU gadget do not handle USB reset and thus cannot change
mode, it cannot go from runtime to DFU mode. The solution is to always
be in the DFU ready mode.

Thanks for sharing this commit, it explain well what I was experiencing:
dfu-util was correctly listing partitions but failed to found a device
when trying to update a partition that is still in runtime mode.

Jules

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
