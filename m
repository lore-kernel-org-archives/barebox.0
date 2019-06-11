Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacAp-0004S0-19
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 08:30:32 +0000
Date: Tue, 11 Jun 2019 10:30:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190611083029.bm2h6ubz4qfzpgh7@pengutronix.de>
References: <20190611064906.8938-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611064906.8938-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH 1/3] nvmem: ocotp: Elongate OCOTP_CTRL_ADDR field
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 11, 2019 at 08:49:05AM +0200, Rouven Czerwinski wrote:
> Port of patch from linux-arm-kernel:
> | From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
> |
> | nvmem: imx-ocotp: Elongate OCOTP_CTRL ADDR field to eight bits
> |
> | i.MX6 defines OCOTP_CTRLn:ADDR as seven bit address-field with a one bit
> | RSVD0 field, i.MX7 defines OCOTP_CTRLn:ADDR as a four bit address-field
> | with a four bit RSVD0 field.
> |
> | i.MX8 defines the OCOTP_CTRLn:ADDR bit-field as a full range eight bits.
> |
> | i.MX6 and i.MX7 should return zero for their respective RSVD0 bits and
> | ignore a write-back of zero where i.MX8 will make use of the full range.
> |
> | This patch expands the bit-field definition for all users to eight bits,
> | which is safe due to RSVD0 being a no-op for the i.MX6 and i.MX7.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/nvmem/ocotp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

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
