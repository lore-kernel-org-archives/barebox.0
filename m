Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ve0-x244.google.com ([2607:f8b0:400c:c01::244])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VVhnm-0005Ii-Iq
 for barebox@lists.infradead.org; Mon, 14 Oct 2013 13:03:15 +0000
Received: by mail-ve0-f196.google.com with SMTP id oz11so213808veb.3
 for <barebox@lists.infradead.org>; Mon, 14 Oct 2013 06:02:50 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 14 Oct 2013 21:02:49 +0800
Message-ID: <CANvTkNZOQZt=XcYxSPX0+jT7tK9PrradDwWEcTtCfOQi1c9boQ@mail.gmail.com>
From: Kevin Du Huanpeng <u74147@gmail.com>
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
Subject: barebox.lds.S, why _edata not follows the end of .data section?
To: barebox@lists.infradead.org

Hi, in the linker script,
> _sdata = .;
>. = ALIGN(4);
> .data : { *(.data*) }
? why _edata is not here?
> . = .;
> __barebox_cmd_start = .;
> .barebox_cmd : { KEEP(*(SORT_BY_NAME(.barebox_cmd*))) }
> more....
>  __dynsym_start = .;
> *(.dynsym)
>  __dynsym_end = .;
> }
> _edata = .;
> . = ALIGN(4);
> __bss_start = .;

why _edata is there?
other sections between _sdata and _edata, are they needed to be modified?

duhuanpeng

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
