Delivery-date: Mon, 07 Aug 2023 08:44:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qStz7-00Ahse-Nd
	for lore@lore.pengutronix.de; Mon, 07 Aug 2023 08:44:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qStz5-0003qx-Jo
	for lore@pengutronix.de; Mon, 07 Aug 2023 08:44:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LeYIbUghFtJPtD2qw8TxBrYfunnuSC5B8FFj3nrmYSQ=; b=BxRVbx/870fqyAh6lsvZVfljnj
	eLZoYnuBs1egP3dWVYrVenyIyEEQMfOooEQ4r+NGkP3g39f0L2T9oTLmCkxO+mrQLniEzOt4qtYpX
	jXlduTw4PQHTZyT8TJg6S+qT6rjNjb2Bce3/RnYqoyu2sU39lBZxl7C3GzVGSEPny8aPkmhtfmaUz
	fda3oo39NLfgfkv3wum98xP68/pdMINeovqbmImtTO+Em+lflk+ZvghiKwa1bomk4jvGNBLM82ltc
	Yof30Hlle4Qc2rOwEMK3S0oNkut0Ehg3cb1sUi6LgGikQKfgxeIPK+IRjL3YFBHwJQpLmkMGWG9SG
	l5VRQcDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSty7-00GHwr-1D;
	Mon, 07 Aug 2023 06:43:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSty1-00GHw6-2R
	for barebox@lists.infradead.org;
	Mon, 07 Aug 2023 06:43:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qSty0-0003ej-GX; Mon, 07 Aug 2023 08:43:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qSty0-0004BC-8u; Mon, 07 Aug 2023 08:43:48 +0200
Date: Mon, 7 Aug 2023 08:43:48 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230807064348.GI26314@pengutronix.de>
References: <20230804133840.1377376-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230804133840.1377376-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230806_234349_802536_F0DD3710 
X-CRM114-Status: GOOD (  22.94  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: socfpga: fix include after upstream DT
 reorganization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 04, 2023 at 03:38:40PM +0200, Ahmad Fatoum wrote:
> Upstream arm32 device trees are now organized by vendor and optionally SoC
> family. Running:
> 
>   $ rg '[<"]arm/' arch/arm/dts/ | rg '[^:]+:[^/]+/[^/]+[">]'
> 
> shows that there is at least one device tree in the barebox tree, which was
> not fixed up to use the new paths, so fix that one.
> 
> Fixes: 1f2570eb41c8 ("dts: update to v6.5-rc1")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/dts/socfpga_cyclone5_socdk.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

> 
> diff --git a/arch/arm/dts/socfpga_cyclone5_socdk.dts b/arch/arm/dts/socfpga_cyclone5_socdk.dts
> index 0dfd5ebaed6e..ef1f9af9cf14 100644
> --- a/arch/arm/dts/socfpga_cyclone5_socdk.dts
> +++ b/arch/arm/dts/socfpga_cyclone5_socdk.dts
> @@ -15,7 +15,7 @@
>   * along with this program.  If not, see <http://www.gnu.org/licenses/>.
>   */
>  
> -#include <arm/socfpga_cyclone5_socdk.dts>
> +#include <arm/intel/socfpga/socfpga_cyclone5_socdk.dts>

This one slipped through the cracks because I only fixed up until
MAKEALL was happy and this board is not enabled in any defconfig. I just
sent a patch to enable the remaining SoCFPGA boards in
socfpga_defconfig.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


