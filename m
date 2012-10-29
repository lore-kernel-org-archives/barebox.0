Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TSjqt-0000x4-1Z
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 07:33:40 +0000
Date: Mon, 29 Oct 2012 08:33:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121029073330.GH1641@pengutronix.de>
References: <1351276641-24913-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351276641-24913-1-git-send-email-robert.jarzmik@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb: add flow control to u_serial
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Fri, Oct 26, 2012 at 08:37:21PM +0200, Robert Jarzmik wrote:
> When using the serial console over USB to download files, and
> when the USB bandwidth is pushed to its limits, the barebox UDC
> device won't be able to absorb all the traffic.
> 
> Modify the u_serial gadget so that if there is not enough room
> in buffers, don't push USB requests down the gadget driver, so
> that it is saturated, and give it a chance to NAK requests.
> 
> The previous behaviour was loosing bytes (as kfifo_put is lossy).
> The fixed behavious is lossless (based on USB NAK protocol).
> 
> While at it, increase a bit buffer sizes to 8kB to absorb heavy
> transfers such as a linux kernel image.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

Applied, thanks

Sascha

> ---
>  drivers/usb/gadget/u_serial.c |   25 +++++++++++++++++--------
>  1 file changed, 17 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/u_serial.c
> index 946b4f2..162439e 100644
> --- a/drivers/usb/gadget/u_serial.c
> +++ b/drivers/usb/gadget/u_serial.c
> @@ -74,9 +74,9 @@
>   * next layer of buffering.  For TX that's a circular buffer; for RX
>   * consider it a NOP.  A third layer is provided by the TTY code.
>   */
> -#define QUEUE_SIZE		16
> +#define QUEUE_SIZE		128
>  #define WRITE_BUF_SIZE		8192		/* TX only */
> -
> +#define RECV_FIFO_SIZE		(1024 * 8)
>  /*
>   * The port structure holds info for each port, one for each minor number
>   * (and thus for each /dev/ node).
> @@ -92,7 +92,7 @@ struct gs_port {
>  	u8			port_num;
>  
>  	struct list_head	read_pool;
> -	unsigned		n_read;
> +	unsigned		read_nb_queued;
>  
>  	struct list_head	write_pool;
>  
> @@ -123,7 +123,9 @@ static unsigned gs_start_rx(struct gs_port *port)
>  	struct usb_ep		*out = port->port_usb->out;
>  	unsigned		started = 0;
>  
> -	while (!list_empty(pool)) {
> +	while (!list_empty(pool) &&
> +	       ((out->maxpacket * (port->read_nb_queued + 1) +
> +		kfifo_len(port->recv_fifo)) < RECV_FIFO_SIZE)) {
>  		struct usb_request	*req;
>  		int			status;
>  
> @@ -134,6 +136,7 @@ static unsigned gs_start_rx(struct gs_port *port)
>  		/* drop lock while we call out; the controller driver
>  		 * may need to call us back (e.g. for disconnect)
>  		 */
> +		port->read_nb_queued++;
>  		status = usb_ep_queue(out, req);
>  
>  		if (status) {
> @@ -161,8 +164,9 @@ static void gs_read_complete(struct usb_ep *ep, struct usb_request *req)
>  		return;
>  
>  	kfifo_put(port->recv_fifo, req->buf, req->actual);
> -
>  	list_add_tail(&req->list, &port->read_pool);
> +	port->read_nb_queued--;
> +
>  	gs_start_rx(port);
>  }
>  
> @@ -276,7 +280,7 @@ static int gs_start_io(struct gs_port *port)
>  	}
>  
>  	/* queue read requests */
> -	port->n_read = 0;
> +	port->read_nb_queued = 0;
>  	started = gs_start_rx(port);
>  
>  	/* unblock any pending writes into our circular buffer */
> @@ -396,6 +400,7 @@ static int serial_tstc(struct console_device *cdev)
>  	struct gs_port	*port = container_of(cdev,
>  					struct gs_port, cdev);
>  
> +	gs_start_rx(port);
>  	return (kfifo_len(port->recv_fifo) == 0) ? 0 : 1;
>  }
>  
> @@ -412,10 +417,14 @@ static int serial_getc(struct console_device *cdev)
>  	while (kfifo_getc(port->recv_fifo, &ch)) {
>  		usb_gadget_poll();
>  		if (is_timeout(to, 300 * MSECOND))
> -			break;
> +			goto timeout;
>  	}
>  
> +	gs_start_rx(port);
>  	return ch;
> +timeout:
> +	gs_start_rx(port);
> +	return -ETIMEDOUT;
>  }
>  
>  static void serial_flush(struct console_device *cdev)
> @@ -461,7 +470,7 @@ int gserial_connect(struct gserial *gser, u8 port_num)
>  	 */
>  	gser->port_line_coding = port->port_line_coding;
>  
> -	port->recv_fifo = kfifo_alloc(1024);
> +	port->recv_fifo = kfifo_alloc(RECV_FIFO_SIZE);
>  
>  	/*printf("gserial_connect: start ttyGS%d\n", port->port_num);*/
>  	gs_start_io(port);
> -- 
> 1.7.10
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
