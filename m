Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XSSeY-0005N0-9C
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 15:20:50 +0000
Received: by mail-we0-f173.google.com with SMTP id u56so931742wes.32
 for <barebox@lists.infradead.org>; Fri, 12 Sep 2014 08:20:28 -0700 (PDT)
Message-ID: <54130F37.8050705@gmail.com>
Date: Fri, 12 Sep 2014 17:20:23 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
 <1410516830-9403-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410516830-9403-8-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 07/10] resource: Let dev_get_mem_region return an error
 pointer
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

On 09/12/2014 12:13 PM, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   drivers/base/driver.c            |  7 ++++++-
>   drivers/bus/omap-gpmc.c          |  5 +++--
>   drivers/net/gianfar.c            | 11 +++++++----
>   drivers/net/orion-gbe.c          |  5 +++++
>   drivers/net/phy/mdio-mvebu.c     |  5 +++--

For orion-gbe and mdio-mvebu,

Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

Thanks!


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
