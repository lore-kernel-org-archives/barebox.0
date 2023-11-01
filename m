Delivery-date: Wed, 01 Nov 2023 09:54:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qy6zS-00DPfr-0K
	for lore@lore.pengutronix.de; Wed, 01 Nov 2023 09:54:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qy6zM-00084B-TV
	for lore@pengutronix.de; Wed, 01 Nov 2023 09:54:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mds4FfRv6vWtamjEjywLrfmxCFKgOZjEAbql7BkaIJk=; b=gUGtLAZ6ECnZNSi3Gw73ZCtGtS
	gnW393wDJ7Kv0sD1tK5g2a4doR6FIbLOAvvV7pPAux+I4b3UR5CDXfN36Zj6mXu5emQeJT0p7HDiI
	mYQ/PurRcTZJzLkIpmTY8qP8hUGuTdxNuZnUHT+R08qsyv8X2RUVlj6IfI3F9zIaJirCFXRE1xw13
	J8ZCfmXbI/xmUc+FXaa+iR4CqJkl3zL0h6hz42vksdEk75XI0hU0FxhDpVegThldcpte8PuzDNVVX
	XiaQqe6smX44K0G7JYnw8zYnhrFVXMz4XeccJNxxBuvAzDTFBD8kBJn4EjdBiX/sfhpHxxL8y2/lC
	kCkIAFQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qy6y7-006uLb-1N;
	Wed, 01 Nov 2023 08:52:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qy6y0-006uKn-1s
	for barebox@lists.infradead.org;
	Wed, 01 Nov 2023 08:52:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qy6xz-0007qB-D8; Wed, 01 Nov 2023 09:52:47 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qy6xz-005lS7-0U; Wed, 01 Nov 2023 09:52:47 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qy6xy-00HPMx-Uc; Wed, 01 Nov 2023 09:52:46 +0100
Date: Wed, 1 Nov 2023 09:52:46 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231101085246.GF3359458@pengutronix.de>
References: <20231018144038.504641-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231018144038.504641-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231101_015248_617719_2946269D 
X-CRM114-Status: GOOD (  23.45  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] scripts: imx: add Makefile.mingw64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Oct 18, 2023 at 04:40:38PM +0200, Marco Felsch wrote:
> Add a small Makfile for building the imx-usb-loader.exe outside the
> Kbuild system. The user can compile the tool for windows by:
> 
>   make -f scripts/imx/Makfile.mingw64 LIBUSB_DIR=~/libusb-1.0.26
> 
> or by
> 
>   make -f scripts/imx/Makfile.mingw64 LIBUSB_DIR=~/libusb-1.0.26 O=win
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  scripts/imx/Makefile.mingw64 | 48 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
>  create mode 100644 scripts/imx/Makefile.mingw64

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/Makefile.mingw64 b/scripts/imx/Makefile.mingw64
> new file mode 100644
> index 000000000000..e012d833f1b4
> --- /dev/null
> +++ b/scripts/imx/Makefile.mingw64
> @@ -0,0 +1,48 @@
> +ifeq ($(strip $(LIBUSB_DIR)),)
> +$(error Please specify LIBUSB_DIR e.g. LIBUSB_DIR=~/libusb-1.0.26-binaries)
> +endif
> +
> +CC := x86_64-w64-mingw32-gcc
> +ifeq ($(shell which $(CC)),)
> +$(error "No $(CC) in $(PATH) found")
> +endif
> +
> +LIBUSB_MINGW := $(LIBUSB_DIR)/libusb-MinGW-x64
> +ifeq ($(wildcard $(strip $(LIBUSB_MINGW))),)
> +$(error "$(LIBUSB_MINGW) not found")
> +endif
> +
> +src := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
> +
> +# Do we want to change the working directory?
> +ifeq ("$(origin O)", "command line")
> +  OUTPUT := $(O)
> +else
> +  OUTPUT := $(src)/imx-usb-loader-windows
> +endif # ifneq ($(OUTPUT),)
> +
> +# Make's built-in functions such as $(abspath ...), $(realpath ...) cannot
> +# expand a shell special character '~'. We use a somewhat tedious way here.
> +obj := $(shell mkdir -p $(OUTPUT) && cd $(OUTPUT) && pwd)
> +$(if $(obj),, \
> +     $(error failed to create output directory "$(OUTPUT)"))
> +
> +# $(realpath ...) resolves symlinks
> +obj := $(realpath $(obj))
> +
> +CPPFLAGS := -I $(LIBUSB_MINGW)/include/libusb-1.0 -I $(src)/../include/ -I $(src)/../../include/mach/
> +LDFLAGS := -L $(LIBUSB_MINGW)/lib -lusb-1.0 -static
> +
> +OBJECTS := $(addprefix $(obj)/, imx.o imx-usb-loader.o)
> +
> +$(obj)/%.o: $(src)/%.c
> +	@$(CC) -c -o $@ $< $(CPPFLAGS)
> +
> +$(obj)/imx-usb-loader.exe: $(OBJECTS)
> +	@$(CC) -o $@ $(OBJECTS) $(LDFLAGS)
> +
> +all: $(obj)/imx-usb-loader.exe
> +
> +.PHONY: clean
> +clean:
> +	@rm -rf $(obj)
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


