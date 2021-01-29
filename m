Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5RNi-0006LZ-6F
 for barebox@lists.infradead.org; Fri, 29 Jan 2021 10:52:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 6DDDF1A2F8B
 for <barebox@lists.infradead.org>; Fri, 29 Jan 2021 10:51:58 +0000 (UTC)
Date: Fri, 29 Jan 2021 11:51:52 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20210129105152.GA22732@tellis.lin.mbt.kalray.eu>
References: <20210127164937.20328-1-jmaselbas@kalray.eu>
 <91ec3053-201d-ff02-0f78-6d86a6b8a0f0@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <91ec3053-201d-ff02-0f78-6d86a6b8a0f0@pengutronix.de>
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
Subject: Re: [RFC PATCH] usb: gadget: dfu: Wrap fs operation in workqueue
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad,

On Fri, Jan 29, 2021 at 10:51:18AM +0100, Ahmad Fatoum wrote:
> Hello Jules,
> 
> On 27.01.21 17:49, Jules Maselbas wrote:
> > File system operation shouldn't be executed in a poller. Use
> > a workqueue to delay filesystem operation to command context.
> > 
> > This is an RFC, extra work must be done to properly handle error
> > cases and dfu cleanup.
> 
> I erroneously thought the poller is within the DFU bits. I wonder what
> side-effect moving the whole USB gadget polling into a workqueue would
> have. In that case, we wouldn't need to any changes for DFU itself.
> 
If I understood correctly you're suggesting to wrap the entire dfu
gadget inside a poller. I have not tried this and it might work.
However wrapping each fs operation allow the dfu gadget to respond
to GET_STATUS queries will erase/write operation are on-going.

Jules


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
