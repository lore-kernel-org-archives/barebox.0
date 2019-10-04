Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGIUC-0003jV-8F
 for barebox@lists.infradead.org; Fri, 04 Oct 2019 07:58:51 +0000
References: <20191002130959.2856-1-m.felsch@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <567d3814-0e47-cceb-fede-184cef75aaec@phytec.de>
Date: Fri, 4 Oct 2019 09:58:41 +0200
MIME-Version: 1.0
In-Reply-To: <20191002130959.2856-1-m.felsch@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] ARM: i.MX: phytec-som-imx6: phycore: fix updating pmic
 regulators
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de, s.christ@phytec.de, j.remmet@phytec.de

Hi Marco,

On 02.10.19 15:09, Marco Felsch wrote:
> Currently the fixup code assumes that only one i2c bus is active. If we
> reuse the board code for other boards this isn't always true. Fix that
> by using of_find_i2c_adapter_by_node() to address both cases.
> 
> Fixes: b6bebb7aca ("ARM: i.MX: phytec-som-imx6: phycore: Set BUCK mode to SYNC")
> Signed-off-by: Marco Felsch<m.felsch@pengutronix.de>

Tested-by: Stefan Riedmueller <s.riedmueller@phytec.de>

Regards,
Stefan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
