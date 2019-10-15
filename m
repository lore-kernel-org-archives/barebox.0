Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKLMJ-000512-NN
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 11:51:25 +0000
Received: from [2001:67c:670:100:6a05:caff:fe2d:a9b1]
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1iKLMI-0001Ux-GT
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 13:51:22 +0200
References: <1000448243.171040.1571138983215@mail.vodafone.de>
 <e7508f1c-0f8f-0e2b-6694-4740cc598868@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ce8c9188-66ee-a1fe-26b6-4438b661e08d@pengutronix.de>
Date: Tue, 15 Oct 2019 13:51:22 +0200
MIME-Version: 1.0
In-Reply-To: <e7508f1c-0f8f-0e2b-6694-4740cc598868@pengutronix.de>
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
Subject: Re: imx7d enable second core
To: barebox@lists.infradead.org

On 10/15/19 1:37 PM, Ahmad Fatoum wrote:
> If you #define DEBUG in arch/arm/cpu/psci.c, a smc command is enabled that can
> be used to test ARM_PSCI_0_2_CPU_ON. This might aid you in your debug effort.

Should've added that I don't have an answer for your original question,
just figured I should note this as it may be helpful.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
