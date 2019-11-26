Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.loongson.cn ([114.242.206.163] helo=loongson.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZaVo-00023q-Iq
 for barebox@lists.infradead.org; Tue, 26 Nov 2019 13:04:14 +0000
Date: Tue, 26 Nov 2019 21:03:58 +0800
From: Du Huanpeng <duhuanpeng@loongson.cn>
Message-ID: <20191126130357.GA23625@brew>
References: <20191126115119.GA20169@brew>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126115119.GA20169@brew>
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
Subject: Re: macro about loongson's CPU & SoC
To: barebox@lists.infradead.org

> The name CPU_LOONGSON1B is used in the linux kernel.
> Please keep barebox macro name in sync with linux kernel.
shall we use the rules in a "balanced" way? :)

the name CPU_LOONGSON1B is used in the kernel, it is true.
if you dive into the source tree, you will find more~

in bootloader, do we need so many kinds of CPU, are they
realy different? two or three ISA set(CPU) is enough for
loongson's chip(see the table in my last mail) to run barebox.

Regards,
duhuanpeng


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
