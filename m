Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYB6X-0008Jg-F1
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 15:12:02 +0000
References: <1558697578-69121-1-git-send-email-m.otto@phytec.de>
 <1558697578-69121-3-git-send-email-m.otto@phytec.de>
From: Bastian Krause <bst@pengutronix.de>
Message-ID: <312ec99f-9b49-95a4-f2f0-4ebba41d0217@pengutronix.de>
Date: Tue, 4 Jun 2019 17:11:55 +0200
MIME-Version: 1.0
In-Reply-To: <1558697578-69121-3-git-send-email-m.otto@phytec.de>
Content-Language: en-US
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
Subject: Re: [PATCH 3/4] i.mx6: signed boot: add habv4-imx6-gencsf.h to the
 flash header of the PHYTEC boards
To: Maik Otto <m.otto@phytec.de>, barebox@lists.infradead.org

Hi,

On 5/24/19 1:32 PM, Maik Otto wrote:
> the habv4-imx6-gencsf.h is necessary in the board flash header to build
> a signed barebox
> 
> Signed-off-by: Maik Otto <m.otto@phytec.de>
> ---

Including the CSF template snippet for all boards breaks building
unsigned images, right?

A "#ifdef CONFIG_HAB .. #endif" in
arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h should fix this. To
keep things consistent this should be also included in
arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h.

Regards,
Bastian Krause

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
