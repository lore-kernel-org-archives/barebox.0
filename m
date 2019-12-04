Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVct-0004k3-K6
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 14:27:36 +0000
Received: from [2001:67c:670:100:6a05:caff:fe2d:a9b1]
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1icVcs-0000rE-7D
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 15:27:34 +0100
References: <20191204140721.20299-1-ahmad@a3f.at>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <117480d5-a0d1-5af3-9d31-d0a41487f398@pengutronix.de>
Date: Wed, 4 Dec 2019 15:27:33 +0100
MIME-Version: 1.0
In-Reply-To: <20191204140721.20299-1-ahmad@a3f.at>
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
Subject: Re: [PATCH 0/2] bus: efi: add basic ACPI bus infrastructure
To: barebox@lists.infradead.org

On 12/4/19 3:07 PM, Ahmad Fatoum wrote:
> BIOS and barebox would only need to implement the H/W.

s{H/W}{interface}


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
