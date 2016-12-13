Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yb0-x22c.google.com ([2607:f8b0:4002:c09::22c])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGqU9-0006CT-0i
 for barebox@lists.infradead.org; Tue, 13 Dec 2016 17:03:26 +0000
Received: by mail-yb0-x22c.google.com with SMTP id v78so19618899ybe.3
 for <barebox@lists.infradead.org>; Tue, 13 Dec 2016 09:03:02 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161212010146.18667-3-antonynpavlov@gmail.com>
References: <20161212010146.18667-1-antonynpavlov@gmail.com>
 <20161212010146.18667-3-antonynpavlov@gmail.com>
From: Andrey Korolyov <andrey@xdel.ru>
Date: Tue, 13 Dec 2016 20:02:41 +0300
Message-ID: <CABYiri8yCVdtXtg7SN3OOW3h2X-bdtgJsr3VircCo-4fLTGg6Q@mail.gmail.com>
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
Subject: Re: [RFC v3 2/2] Add initial RISC-V architecture support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

> +CONFIG_TEXT_BASE=0x80000000
> +CONFIG_MEMORY_LAYOUT_FIXED=y
> +CONFIG_STACK_BASE=0x807f0000
> +CONFIG_STACK_SIZE=0x10000
> +CONFIG_MALLOC_BASE=0x80800000

Due to changed offsets in e300/u500 configurations (as compared to v2-
qemu config) linkage fails with binutils-2.25.1 and gcc-5.3.0:

arch/riscv/boot/built-in.o: In function `main_entry':
/build/barebox/arch/riscv/boot/main_entry.c:34:(.text+0x0): relocation
truncated to fit: R_RISCV_HI20 against symbol `__bss_start' defined in
.bss section in barebox
Makefile:756: recipe for target 'barebox' failed

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
