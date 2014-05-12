Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x233.google.com ([2a00:1450:400c:c05::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wjp04-0003iD-Cg
 for barebox@lists.infradead.org; Mon, 12 May 2014 12:06:32 +0000
Received: by mail-wi0-f179.google.com with SMTP id bs8so4332757wib.12
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 05:06:10 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 12 May 2014 14:06:09 +0200
Message-ID: <CAJfOKBwruG364nPXp5w9W=p1T2D9XwMkzqKmf4D_8ASs94vL3w@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Subject: openrisc is broken
To: barebox <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>

Hi,

Openrisc is broken because of this commit:

940237285ebbdbf openrisc: Use generic io accessors

There is know an endianness problem. The Linux ethoc driver use this:

static inline u32 ethoc_read(struct ethoc *dev, loff_t offset)
{
#ifdef CONFIG_WISHBONE_BUS_BIG_ENDIAN
return ioread32be(dev->iobase + offset);
#else
return ioread32(dev->iobase + offset);
#endif
}

in combination with CONFIG_GENERIC_IOMAP.

To fix this issue, I think we could just add:

#define ioread8(addr) readb(addr)
#define ioread16(addr) readw(addr)
#define ioread16be(addr) __be16_to_cpu(__raw_readw(addr))
#define ioread32(addr) readl(addr)
#define ioread32be(addr) __be32_to_cpu(__raw_readl(addr))

#define iowrite8(v, addr) writeb((v), (addr))
#define iowrite16(v, addr) writew((v), (addr))
#define iowrite16be(v, addr) __raw_writew(__cpu_to_be16(v), addr)
#define iowrite32(v, addr) writel((v), (addr))
#define iowrite32be(v, addr) __raw_writel(__cpu_to_be32(v), addr)

to our asm-generic/io.h file.

Then I could update the ethoc driver to make use on those accessors.

What do you think of this ?

Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
