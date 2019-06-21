Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heChR-000536-UT
 for barebox@lists.infradead.org; Fri, 21 Jun 2019 06:07:03 +0000
References: <20190621052138.12246-1-antonynpavlov@gmail.com>
 <20190621052138.12246-5-antonynpavlov@gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <fe8306a3-59bf-2fed-2e92-aec546b15fdd@rempel-privat.de>
Date: Fri, 21 Jun 2019 08:06:53 +0200
MIME-Version: 1.0
In-Reply-To: <20190621052138.12246-5-antonynpavlov@gmail.com>
Content-Language: en-GB
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
Subject: Re: [PATCH 4/4] MIPS: dts: tplink-mr3020: add missing stdout-path
 property
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org

Hi Antony,

since you are playing with MR3020, you probably wont to test this kernel
with nfs boot:
https://github.com/olerem/linux-2.6/commits/v5.2/topic/ath79-upstream

The network driver is already in linux-next. The switch driver is on TODO.

Am 21.06.19 um 07:21 schrieb Antony Pavlov:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/dts/tplink-mr3020.dts | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
> index 982cffc250..e30eae1578 100644
> --- a/arch/mips/dts/tplink-mr3020.dts
> +++ b/arch/mips/dts/tplink-mr3020.dts
> @@ -7,6 +7,8 @@
>  	};
>
>  	chosen {
> +		stdout-path = &uart;
> +
>  		environment {
>  			compatible = "barebox,environment";
>  			device-path = &spiflash, "partname:barebox-environment";
>


--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
