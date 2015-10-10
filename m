Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp01.smtpout.orange.fr ([80.12.242.123]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkpuV-0005Jq-HV
 for barebox@lists.infradead.org; Sat, 10 Oct 2015 08:53:48 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1444341979-19157-16-git-send-email-sebastian.hesselbarth@gmail.com>
Date: Sat, 10 Oct 2015 10:48:04 +0200
In-Reply-To: <1444341979-19157-16-git-send-email-sebastian.hesselbarth@gmail.com>
 (Sebastian Hesselbarth's message of "Fri, 9 Oct 2015 00:06:17 +0200")
Message-ID: <87612f85yz.fsf@belgarion.home>
MIME-Version: 1.0
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
Subject: Re: [PATCH 15/17] mtd: nand_mrvl_nfc: Add support for NDCB3 register
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:

> Newer versions of PXA3xx NAND controller support a 4th Command Buffer
> register. Add the required HWFLAGS and additional write to NDCB0.
>
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Hi quite like the hwflags approach, this is something that would be good in
linux kernel too :)

Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
