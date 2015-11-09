Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZvgD7-0002UV-0k
 for barebox@lists.infradead.org; Mon, 09 Nov 2015 06:45:50 +0000
Date: Mon, 9 Nov 2015 07:45:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151109064526.GT8526@pengutronix.de>
References: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
 <1446805318-26691-11-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446805318-26691-11-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH 10/10] ARM: imx6dl: Add support for Phytec phyCORE-i.MX6
 SOM
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 06, 2015 at 11:21:58AM +0100, Stefan Christ wrote:
> From: Christian Hemp <c.hemp@phytec.de>
> 
> Add Phytec phyCORE-i.MX6 SOM.
>      - imx6dl-phytec-phycore-som-nand
>         - 256GB RAM on 1 Bank with 32Bit
>         - 10/100MBit Ethernet
>         - NAND
>         - SD
>         - UART
> 
> Signed-off-by: Stefan Christ <s.christ@phytec.de>
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---

Applied all except this one.

This patch misses something. Compilation fails with:

Error: /ptx/work/dude/WORK_A/sha/backup/barebox/barebox/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi:38.1-8 Label or path ecspi1 not found
Error: /ptx/work/dude/WORK_A/sha/backup/barebox/barebox/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi:75.1-5 Label or path fec not found
Error: /ptx/work/dude/WORK_A/sha/backup/barebox/barebox/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi:81.1-6 Label or path gpmi not found
Error: /ptx/work/dude/WORK_A/sha/backup/barebox/barebox/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi:115.1-6 Label or path i2c3 not found
Error: /ptx/work/dude/WORK_A/sha/backup/barebox/barebox/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi:134.5-6 syntax error

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
