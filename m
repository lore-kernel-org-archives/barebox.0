Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from janus.medel.com ([195.189.166.151])
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dSjdG-00022C-9g
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 12:42:16 +0000
From: Mayur Nande <Mayur.Nande@medel.com>
Date: Wed, 5 Jul 2017 12:41:49 +0000
Message-ID: <7f60ba0f248e430d88c949c54c155728@ATMEDS029.medel.local>
Content-Language: en-US
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
Subject: Earliest possible GPIO toggle on i.mx6
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello all,

I have a question regarding the earliest possible GPIO toggle with barebox on imx6. We use boards with imx6 quad core processor (from Phytec). In our hardware design we have a push button controller which has a "KILL" pin attached to one of the GPIO pins on i.mx6. The requirement is that this pin should be set to 1 within 400 ms of power on. I tried setting this at various places in barebox with incremental improvements starting from the init script, board.c, lowlevel.c and then DCD/lowlevel.c combination. 

The best performance I got was by setting the iomux registers (IOMUXC_SW_MUX_CTL_PAD and IOMUXC_SW_PAD_CTL_PAD) in DCD and the GPIO direction and value registers in lowlevel.c (since GPIO controller registers are not accessible with DCD). Even with this, I get the GPIO set in around 460-475ms at the best. I understand that some of the time here is used by the hardware for voltage regulation/crystal stabilization which probably we can't do anything about.

From barebox side, any suggestions or ideas to improve this would be very helpful.
Thank you very much.        

Warm Regards,
Mayur Nande  






_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
