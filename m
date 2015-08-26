Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUZZp-0007fz-Rn
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 12:13:14 +0000
Date: Wed, 26 Aug 2015 14:12:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150826121251.GT18700@pengutronix.de>
References: <1440498836-8650-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1440498836-8650-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH] usb: ehci-hcd: initialize ehci->qh_list[] with zeros
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 25, 2015 at 01:33:56PM +0300, Peter Mamonov wrote:
> Without this initialization ehci->qh_list[0].qh_endpt2 is left uninitialized,
> which causes problems with some EHCI host controllers.
> 
> Das u-boot uses the same strategy:
> 
> 	static int ehci_common_init(struct ehci_ctrl *ctrl, uint tweaks)
> 	{
> 		...
> 		qh_list = &ctrl->qh_list;
> 
> 		/* Set head of reclaim list */
> 		memset(qh_list, 0, sizeof(*qh_list));
> 		qh_list->qh_link = cpu_to_hc32((unsigned long)qh_list | QH_LINK_TYPE_QH);
> 		qh_list->qh_endpt1 = cpu_to_hc32(QH_ENDPT1_H(1) |
> 							QH_ENDPT1_EPS(USB_SPEED_HIGH));
> 		qh_list->qh_overlay.qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
> 		qh_list->qh_overlay.qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
> 		qh_list->qh_overlay.qt_token =
> 				cpu_to_hc32(QT_TOKEN_STATUS(QT_TOKEN_STATUS_HALTED));
> 		...
> 	}
> 
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
