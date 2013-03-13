Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.til-technologies.net ([92.103.228.36]
 helo=mx.til-technologies.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFizo-0007Px-EZ
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 10:33:21 +0000
Message-ID: <51405639.60706@til-technologies.fr>
Date: Wed, 13 Mar 2013 11:34:33 +0100
From: Cerrato Renaud <r.cerrato@til-technologies.fr>
MIME-Version: 1.0
References: <CA+7xNQm-c=Niy8RWxqc+ZY7MjYh41=Qa=ufwq=L-QvVWOjAHwQ@mail.gmail.com>
In-Reply-To: <CA+7xNQm-c=Niy8RWxqc+ZY7MjYh41=Qa=ufwq=L-QvVWOjAHwQ@mail.gmail.com>
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
Subject: Re: [PATCH 6/7] DFU : disable state fix
To: barebox@lists.infradead.org

Inlined patch below.


Signed-off-by: Cerrato Renaud <r.cerrato@til-technologies.fr>
---
 drivers/usb/gadget/dfu.c |    6 ++----
 1 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index e051879..e4af567 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -514,14 +514,12 @@ static void dfu_disable(struct usb_function *f)
     struct f_dfu        *dfu = func_to_dfu(f);
 
     switch (dfu->dfu_state) {
+    case DFU_STATE_dfuIDLE:
     case DFU_STATE_appDETACH:
         dfu->dfu_state = DFU_STATE_dfuIDLE;
         break;
-    case DFU_STATE_dfuMANIFEST_WAIT_RST:
-        dfu->dfu_state = DFU_STATE_appIDLE;
-        break;
     default:
-        dfu->dfu_state = DFU_STATE_appDETACH;
+        dfu->dfu_state = DFU_STATE_appIDLE;
         break;
     }
 
-- 
1.7.2.5


On 12/03/2013 17:38, Renaud C. wrote:
> When an USB_REQ_DFU_DETACH request is received, the device state switch to DFU_STATE_appDETACH, and then wait for an usb reset to switch to DFU_STATE_dfuIDLE (through dfu_disable() being called). 
>
> I noticed that using dfu-util v0.7 on my AT91SAM9260 board, the programming failed because of the device not entering the DFU_STATE_dfuIDLE after an usb reset (staying in the DFU_STATE_appDETACH state).
>
> According to the current implementation, once the USB_REQ_DFU_DETACH is sent and right after the usb reset, if the DFU client set more than one configuration (by iterating over them for example), the device state will reset to the DFU_STATE_appDETACH state on the 2nd iteration because of the following line in set_config (composite.c, line 362) :
>
> ...
> if(cdev->config) 
>     reset_config();   // will call dfu_disable() again!
> ...
>
> The attached patch is a *try* to fix the issue by leaving the device in the DFU_STATE_dfuIDLE state after an usb reset if already in that state. dfu-util will complain about the device already in the DFU_STATE_dfuIDLE on the next start, but everything is still working.
>
> This may need a REVISIT, but since the dfu_disable() gets called on both configuration change and usb reset, we can't do this easily for now..
>
>
>
>
>
>
>
>
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
