Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKFMr-0008WF-Dl
 for barebox@lists.infradead.org; Mon, 21 Sep 2020 06:32:06 +0000
Date: Mon, 21 Sep 2020 08:32:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200921063203.GF21278@pengutronix.de>
References: <1600335415-315975-1-git-send-email-m.otto@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1600335415-315975-1-git-send-email-m.otto@phytec.de>
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
Subject: Re: [PATCH v3 0/2] i.MX6ULL: set engine software for Secure Boot on
 HABv4
To: Maik Otto <m.otto@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 17, 2020 at 11:36:53AM +0200, Maik Otto wrote:
> The i.MX6ULL has no CAAM engine for Secure Boot on HABv4. This patch series
> set the engine software for i.MX6ULL and for the PHYTEC boards PCL-063 with
> i.MX6ULL.
> 
> Changes in v3 and Patch 2:
>     - rework and move the file habv4-imx6-gencsf.h to habv4-imx6-gencsf-template.h
>     - rework the file habv4-imx6ull-gencsf.h and add new file
>       habv4-imx6-gencsf.h
> 
> Changes in v2:                                                                   
>     - Rework in Patch 2 the file habv4-imx6-gencsf.h, because cst 3.3.1 fails
>       for engine software with parameter Feature.
> 
> Maik Otto (2):
>   arch: arm: boards phytec: Split flash header for pcl063 with i.MX6Ul
>     and i.MX6ULL
>   arch: arm: mach-imx: Add habv4 config file for i.MX6ULL

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
