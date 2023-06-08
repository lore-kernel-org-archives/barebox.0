Delivery-date: Thu, 08 Jun 2023 08:34:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q79EN-00FOTu-UN
	for lore@lore.pengutronix.de; Thu, 08 Jun 2023 08:34:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q79EL-0004I8-9g
	for lore@pengutronix.de; Thu, 08 Jun 2023 08:34:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wb17balr1tX7lbRBnt1fuDB7g7o+gj/9E+8xjx1SFiQ=; b=mz/iTmjjx2t9gHl1YLiLc2/i1p
	uAH8yf03ROMxTzhfj0dX1p9ksRnfvGGW58K9fvgUReEOFQ9l+l8PfwJtF8zObI53am1QNynWl11qL
	o+rEeCix1uFg4DbYg6/wTwx7CTi5Qd4EGsx87NUYSxiAZJXFIPeQM09dCT8UtxBYDYx6+0ir2yR0w
	4cGs2HvuVn+jwcPABtCjq32FXq2usvfMhqLJX2DLjC7J3RuCZPyFE9XMI1rGsotQFOfGkLVBt3d9F
	GchiRehksFfN0bK4KvzjaItGNTNsqwnusK4CYGwxtx9Ny2FD2XDAlguza992jc0cPw5BTFDVGIq0S
	v+tgfxCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q79DE-008GKn-0Z;
	Thu, 08 Jun 2023 06:33:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q79DA-008GJA-1d
	for barebox@lists.infradead.org;
	Thu, 08 Jun 2023 06:33:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q79D9-0004AY-7I; Thu, 08 Jun 2023 08:33:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q79D8-0004Yz-Vg; Thu, 08 Jun 2023 08:33:30 +0200
Date: Thu, 8 Jun 2023 08:33:30 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230608063330.GI18491@pengutronix.de>
References: <20230607121259.3175979-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230607121259.3175979-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_233332_565207_DD5C2AA9 
X-CRM114-Status: GOOD (  32.88  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] include: sync <linux/stddef.h> with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 07, 2023 at 02:12:59PM +0200, Ahmad Fatoum wrote:
> Our old definition of offsetof is not an Integer Constant Expression
> with some more recent clang versions[1]. Let's adopt the Linux
> definition as well as a number of new macros that were added as part of
> the hardening of the kernel against common out-of-bound bugs:
> 
>   - offsetofend
>   - struct_group*
>   - DECLARE_FLEX_ARRAY
> 
> Of course, we only benefit from the new macros once we start to use
> them, but that can follow now that they are available.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/stddef.h | 109 ++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 108 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/stddef.h b/include/linux/stddef.h
> index 1044571c3f45..88ff6f1733d2 100644
> --- a/include/linux/stddef.h
> +++ b/include/linux/stddef.h
> @@ -22,7 +22,7 @@ enum {
>  typedef unsigned short wchar_t;
>  
>  #undef offsetof
> -#define offsetof(TYPE, MEMBER) ((size_t) &((TYPE *)0)->MEMBER)
> +#define offsetof(TYPE, MEMBER)	__builtin_offsetof(TYPE, MEMBER)
>  
>  /**
>   * sizeof_field() - Report the size of a struct field in bytes
> @@ -32,4 +32,111 @@ typedef unsigned short wchar_t;
>   */
>  #define sizeof_field(TYPE, MEMBER) sizeof((((TYPE *)0)->MEMBER))
>  
> +/**
> + * offsetofend() - Report the offset of a struct field within the struct
> + *
> + * @TYPE: The type of the structure
> + * @MEMBER: The member within the structure to get the end offset of
> + */
> +#define offsetofend(TYPE, MEMBER) \
> +	(offsetof(TYPE, MEMBER)	+ sizeof_field(TYPE, MEMBER))
> +
> +/**
> + * __struct_group() - Create a mirrored named and anonyomous struct
> + *
> + * @TAG: The tag name for the named sub-struct (usually empty)
> + * @NAME: The identifier name of the mirrored sub-struct
> + * @ATTRS: Any struct attributes (usually empty)
> + * @MEMBERS: The member declarations for the mirrored structs
> + *
> + * Used to create an anonymous union of two structs with identical layout
> + * and size: one anonymous and one named. The former's members can be used
> + * normally without sub-struct naming, and the latter can be used to
> + * reason about the start, end, and size of the group of struct members.
> + * The named struct can also be explicitly tagged for layer reuse, as well
> + * as both having struct attributes appended.
> + */
> +#define __struct_group(TAG, NAME, ATTRS, MEMBERS...) \
> +	union { \
> +		struct { MEMBERS } ATTRS; \
> +		struct TAG { MEMBERS } ATTRS NAME; \
> +	}
> +
> +/**
> + * struct_group() - Wrap a set of declarations in a mirrored struct
> + *
> + * @NAME: The identifier name of the mirrored sub-struct
> + * @MEMBERS: The member declarations for the mirrored structs
> + *
> + * Used to create an anonymous union of two structs with identical
> + * layout and size: one anonymous and one named. The former can be
> + * used normally without sub-struct naming, and the latter can be
> + * used to reason about the start, end, and size of the group of
> + * struct members.
> + */
> +#define struct_group(NAME, MEMBERS...)	\
> +	__struct_group(/* no tag */, NAME, /* no attrs */, MEMBERS)
> +
> +/**
> + * struct_group_attr() - Create a struct_group() with trailing attributes
> + *
> + * @NAME: The identifier name of the mirrored sub-struct
> + * @ATTRS: Any struct attributes to apply
> + * @MEMBERS: The member declarations for the mirrored structs
> + *
> + * Used to create an anonymous union of two structs with identical
> + * layout and size: one anonymous and one named. The former can be
> + * used normally without sub-struct naming, and the latter can be
> + * used to reason about the start, end, and size of the group of
> + * struct members. Includes structure attributes argument.
> + */
> +#define struct_group_attr(NAME, ATTRS, MEMBERS...) \
> +	__struct_group(/* no tag */, NAME, ATTRS, MEMBERS)
> +
> +/**
> + * struct_group_tagged() - Create a struct_group with a reusable tag
> + *
> + * @TAG: The tag name for the named sub-struct
> + * @NAME: The identifier name of the mirrored sub-struct
> + * @MEMBERS: The member declarations for the mirrored structs
> + *
> + * Used to create an anonymous union of two structs with identical
> + * layout and size: one anonymous and one named. The former can be
> + * used normally without sub-struct naming, and the latter can be
> + * used to reason about the start, end, and size of the group of
> + * struct members. Includes struct tag argument for the named copy,
> + * so the specified layout can be reused later.
> + */
> +#define struct_group_tagged(TAG, NAME, MEMBERS...) \
> +	__struct_group(TAG, NAME, /* no attrs */, MEMBERS)
> +
> +/**
> + * __DECLARE_FLEX_ARRAY() - Declare a flexible array usable in a union
> + *
> + * @TYPE: The type of each flexible array element
> + * @NAME: The name of the flexible array member
> + *
> + * In order to have a flexible array member in a union or alone in a
> + * struct, it needs to be wrapped in an anonymous struct with at least 1
> + * named member, but that member can be empty.
> + */
> +#define __DECLARE_FLEX_ARRAY(TYPE, NAME)	\
> +	struct { \
> +		struct { } __empty_ ## NAME; \
> +		TYPE NAME[]; \
> +	}
> +
> +/**
> + * DECLARE_FLEX_ARRAY() - Declare a flexible array usable in a union
> + *
> + * @TYPE: The type of each flexible array element
> + * @NAME: The name of the flexible array member
> + *
> + * In order to have a flexible array member in a union or alone in a
> + * struct, it needs to be wrapped in an anonymous struct with at least 1
> + * named member, but that member can be empty.
> + */
> +#define DECLARE_FLEX_ARRAY(TYPE, NAME) \
> +	__DECLARE_FLEX_ARRAY(TYPE, NAME)
> +
>  #endif
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


