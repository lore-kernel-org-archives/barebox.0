Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx-relay73-hz1.antispameurope.com ([94.100.132.237])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlZ9N-0003bF-Gt
 for barebox@lists.infradead.org; Thu, 11 Jul 2019 13:30:19 +0000
From: Benjamin Beckmeyer <beb@eks-engel.de>
Message-ID: <d00a48e4-406c-c4ae-7d2d-4c89c3428fda@eks-engel.de>
Date: Thu, 11 Jul 2019 15:30:01 +0200
MIME-Version: 1.0
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
Subject: MII command to read and write specific registers
To: barebox@lists.infradead.org

Hey all,
is there a possibility to read/write specific registers from/to different MII addresses?

I know that there is miitool but it just can give me the first 16 registers of a PHY.
But I need write specific registers e.g. MII addr 2 register 0 and read MII addr 2 
register 1. I know uboot is having the mii command(exactly what I would need), and I 
have seen that there were parameters for address and register in miitool but they 
were deleted lastly.

Thanks in advance.

Cheers,
Benjamin


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
