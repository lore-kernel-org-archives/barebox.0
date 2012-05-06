Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SR7oY-0006bg-JX
 for barebox@lists.infradead.org; Sun, 06 May 2012 20:12:19 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m3k40qmhsn.fsf@intrepid.localdomain>
 <20120506173507.GV4141@pengutronix.de>
Date: Sun, 06 May 2012 22:08:48 +0200
In-Reply-To: <20120506173507.GV4141@pengutronix.de> (Sascha Hauer's message of
 "Sun, 6 May 2012 19:35:07 +0200")
Message-ID: <m3397dysvj.fsf@intrepid.localdomain>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Cosmetic: fix endianness convertions in read[wlq]().
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

>> -#define readw(addr) __le16_to_cpu(__raw_readw(addr))
>> -#define readl(addr) __le32_to_cpu(__raw_readl(addr))
>> +#define readw(addr) __cpu_to_le16(__raw_readw(addr))
>> +#define readl(addr) __cpu_to_le32(__raw_readl(addr))
>
> This seems wrong. readw/l are supposed to do little endian reads and that
> is exactly what the code you remove does: It reads in cpu native
> endianess and interprets that as a little endian word which is then
> converted into cpu native endian word.
> (Also the code is copied from the kernel which makes me quite confident
> that it's correct)

Well... That's right. I forgot the PCI on ARM is set in order-preserving
mode. This means that while the peripherals (u32) are accessed simply
with __raw_readl(), on PCI bus __raw_readl() yields wrong-endian value
(le32 instead of u32). I wonder how it passes sparse.
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
