Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.codeaurora.org ([198.145.11.231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgGiZ-0003Wy-S9
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 16:21:32 +0000
Mime-Version: 1.0 (Mac OS X Mail 7.0 \(1822\))
From: Kumar Gala <galak@codeaurora.org>
In-Reply-To: <1384266701-12608-4-git-send-email-s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2013 10:21:02 -0600
Message-Id: <C90E2E36-D168-4374-B420-38B2BB1914BD@codeaurora.org>
References: <1384266701-12608-1-git-send-email-s.hauer@pengutronix.de>
 <1384266701-12608-4-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/4] DT: Add binding for Altera FPGAs in passive-serial
 mode
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, jbe@pengutronix.de, devicetree@vger.kernel.org


On Nov 12, 2013, at 8:31 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: devicetree@vger.kernel.org
> ---
> .../devicetree/bindings/firmware/altr,passive-serial.txt    | 13 ++++++++=
+++++
> 1 file changed, 13 insertions(+)
> create mode 100644 Documentation/devicetree/bindings/firmware/altr,passiv=
e-serial.txt
> =

> diff --git a/Documentation/devicetree/bindings/firmware/altr,passive-seri=
al.txt b/Documentation/devicetree/bindings/firmware/altr,passive-serial.txt
> new file mode 100644
> index 0000000..6d40c91
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/firmware/altr,passive-serial.txt
> @@ -0,0 +1,13 @@
> +Altera FPGAs in passive serial mode
> +-----------------------------------
> +
> +This binding defines the control interface to Altera FPGAs in
> +passive serial mode. This is used to upload the firmware and
> +to start the FPGA.
> +
> +Required properties:
> +- compatible: shall be "altr,passive-serial=94

This doesn=92t seem quite descriptive enough, easy to confuse with a serial=
 port.

> +- reg: SPI chip select

Is this a SPI device than?

> +- nstat-gpio: Specify GPIO for controlling the nstat pin
> +- confd-gpio: Specify GPIO for controlling the confd pin
> +- nconfig-gpio: Specify GPIO for controlling the nconfig pin
> -- =

> 1.8.4.2
> =

> --
> To unsubscribe from this list: send the line "unsubscribe devicetree" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
