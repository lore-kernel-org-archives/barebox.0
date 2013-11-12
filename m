Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgFHg-0008T0-7Y
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 14:49:40 +0000
From: =?iso-8859-15?q?J=FCrgen_Beisert?= <jbe@pengutronix.de>
Date: Tue, 12 Nov 2013 15:51:15 +0100
References: <1384266701-12608-1-git-send-email-s.hauer@pengutronix.de>
 <1384266701-12608-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1384266701-12608-4-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201311121551.15343.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/4] DT: Add binding for Altera FPGAs in passive-serial
 mode
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, devicetree@vger.kernel.org

On Tuesday 12 November 2013 15:31:40 Sascha Hauer wrote:
> [...]
> +Required properties:
> +- compatible: shall be "altr,passive-serial"
> +- reg: SPI chip select
> +- nstat-gpio: Specify GPIO for controlling the nstat pin
> +- confd-gpio: Specify GPIO for controlling the confd pin
> +- nconfig-gpio: Specify GPIO for controlling the nconfig pin

A suggestion was to use the genuine signal names at the FPGA side:

 "nstatus", "config-done" and "nconfig" (all with the trailing "-gpio")

jbe

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Beisert =A0 =A0 =A0 =A0 =A0 =A0 |
Linux Solutions for Science and Industry =A0 =A0 =A0| http://www.pengutroni=
x.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
