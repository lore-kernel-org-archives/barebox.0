Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioPK7-0000sO-31
 for barebox@lists.infradead.org; Mon, 06 Jan 2020 10:09:24 +0000
Message-ID: <c9fe57bcfa3bd840af877d9a888d0f651a59a125.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 06 Jan 2020 11:09:18 +0100
In-Reply-To: <84001e838c22a3e17a1b2ca5b7e535ec9ee9ce16.camel@pengutronix.de>
References: <20200102102334.73726-1-r.czerwinski@pengutronix.de>
 <84001e838c22a3e17a1b2ca5b7e535ec9ee9ce16.camel@pengutronix.de>
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
Subject: Re: [PATCH] ARM: nitrogen6: add lowlevel UART initialization
To: Lucas Stach <l.stach@pengutronix.de>, barebox@lists.infradead.org

On Mon, 2020-01-06 at 10:46 +0100, Lucas Stach wrote:
> On Do, 2020-01-02 at 11:23 +0100, Rouven Czerwinski wrote:
> > Mux UART1 and UART2 correctly to allow usage of DEBUG_LL.
> 
> There is only one UART intended as console on this board. Why are you
> setting up 2 UARTs here?

I am using this to work on OP-TEE, which does not implement the UART
initialization and instead relies on the bootloader. This way barebox
and OP-TEE don't need to share the same UART.
 
Regards,
Rouven


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
