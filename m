Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22b.google.com ([2a00:1450:4013:c01::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VViWa-0006am-1c
 for barebox@lists.infradead.org; Mon, 14 Oct 2013 13:49:33 +0000
Received: by mail-ea0-f171.google.com with SMTP id n15so3414300ead.16
 for <barebox@lists.infradead.org>; Mon, 14 Oct 2013 06:49:06 -0700 (PDT)
Date: Mon, 14 Oct 2013 15:48:52 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131014134851.GA7556@omega>
References: <CANvTkNZOQZt=XcYxSPX0+jT7tK9PrradDwWEcTtCfOQi1c9boQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANvTkNZOQZt=XcYxSPX0+jT7tK9PrradDwWEcTtCfOQi1c9boQ@mail.gmail.com>
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
Subject: Re: barebox.lds.S, why _edata not follows the end of .data section?
To: Kevin Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Mon, Oct 14, 2013 at 09:02:49PM +0800, Kevin Du Huanpeng wrote:
> Hi, in the linker script,
> > _sdata = .;
> >. = ALIGN(4);
> > .data : { *(.data*) }
> ? why _edata is not here?

Yes it could be there. I added this to the linker script because I
needed all sdram_regions for barebox to jump over all barebox memory
regions in memtest.

Another solution would be to add a another region for barebox_cmds or
something else, but I though that can be located in data, too.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
