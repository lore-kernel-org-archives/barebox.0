Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQqO6-0003xE-GU
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 08:35:32 +0000
References: <1528359910-5868-1-git-send-email-t.remmet@phytec.de>
From: Bastian Stender <bst@pengutronix.de>
Message-ID: <eee6aff7-c1cf-ec09-a531-827c877954b0@pengutronix.de>
Date: Thu, 7 Jun 2018 10:35:06 +0200
MIME-Version: 1.0
In-Reply-To: <1528359910-5868-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH v2] commands: mmc_extcsd: Add support to write multibyte
 registers
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On 06/07/2018 10:25 AM, Teresa Remmet wrote:
> It has been possible to write only the first byte of a multibyte register.
> Updated the command to write the complete value of a multibyte register at once.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>

Reviewed-by: Bastian Stender <bst@pengutronix.de>

-- 
Pengutronix e.K.
Industrial Linux Solutions
http://www.pengutronix.de/
Peiner Str. 6-8, 31137 Hildesheim, Germany
Amtsgericht Hildesheim, HRA 2686

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
