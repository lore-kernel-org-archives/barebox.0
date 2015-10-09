Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp12.smtpout.orange.fr ([80.12.242.134]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkdEg-0005Ky-PS
 for barebox@lists.infradead.org; Fri, 09 Oct 2015 19:21:47 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1444341979-19157-6-git-send-email-sebastian.hesselbarth@gmail.com>
Date: Fri, 09 Oct 2015 21:16:04 +0200
In-Reply-To: <1444341979-19157-6-git-send-email-sebastian.hesselbarth@gmail.com>
 (Sebastian Hesselbarth's message of "Fri, 9 Oct 2015 00:06:07 +0200")
Message-ID: <87612fam4r.fsf@belgarion.home>
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
Subject: Re: [PATCH 05/17] mtd: nand_mrvl_nfc: Remove keep_config
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:

> keep_config and it's corresponding DT property is meant for the
> Linux kernel to keep the config setup by a boot-loader. As we
> are the bootloader and it is not used at all, get rid of it.

NAK on this one.
We're the "secondary bootloader". The first code running is the pxa3xx ROM code,
which initialized the NAND, read the OBMI, then read barebox, and transfered
control.

It can be assumed that for stacked NAND, the ROM code's timings are more
accurate than the generic ones, hence keep_config.

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
