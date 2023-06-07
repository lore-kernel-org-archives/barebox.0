Delivery-date: Wed, 07 Jun 2023 15:50:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6tYx-00EOlZ-JS
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 15:50:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6tYv-0002Pl-2D
	for lore@pengutronix.de; Wed, 07 Jun 2023 15:50:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tl69s6NPlqeJ9fArzthv1jeGLqQNuIDo6qDWcMtsLeo=; b=jn3f4/Y5sPkizAiysmVz2Csux2
	5XVFRgfHjcbsLltyomsEBFlxhW5K+wp3/RdBXOdK9lpCzCCjbQnCKArqvgoNGWtLr+6c6Ja8xzXfe
	ogZH/kMNI++OSImvlz9Xj+a6AvkL2ak39YFWGILtFGBzy6ymDEv/Q38dumsaLkQGB5PTGfvezeiUl
	seVCTaWxHzvE8X9iMAduDwofi9jDMU3PQ839l86vXVb88exq6mIdiW3gAHLoOhw7LppbQ6QeIPpEU
	M7d61NRXEBSR/pTc9TK3g2hH/RS5qFj6a7jTmDs2RFR6d7muGEd+Uf/xyBg4GjsJUIw+6Oa8qnvu7
	6nMNtfZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6tXe-00694X-2r;
	Wed, 07 Jun 2023 13:49:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6tXd-00693V-0L
	for barebox@bombadil.infradead.org;
	Wed, 07 Jun 2023 13:49:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=tl69s6NPlqeJ9fArzthv1jeGLqQNuIDo6qDWcMtsLeo=; b=g5GrUSqw3rGganNI0DPDsEomCW
	BDi2DddO7caUSe0ih2+ioHUJUHEKdpFG5eieWEac8D/FhxXxfOKfTJ8dRzOSUrq0sAg+mvALwA3Px
	uEoSh99JFSqQVgfIAQW6eceEvePQIeRuq7AnS1l/gv0wg5f2Q8rXNPnlRS2rWFa4r3c4KeybDYGWP
	5TJ+cpa2/zWs35o2YKMsW0p9P1uDgUfnCDshfH8qHGUnQ6CjsICUwqXre2+PyX/6Bqnix1gVizBL/
	rS8W8hL3ieoPYtbfv4mOoR/4hwL2YCC2ieWrBnJqJ025nMATw8CqsnIZsoA0drZ+ynY2sIrYY/eDZ
	UMwiesRw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6s3N-00590x-1I
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 12:14:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6s3L-0005Yl-AG; Wed, 07 Jun 2023 14:14:15 +0200
Message-ID: <9132f89b-947d-b232-d434-2afd5c994f48@pengutronix.de>
Date: Wed, 7 Jun 2023 14:14:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20230607121259.3175979-1-a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230607121259.3175979-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_131417_554235_E598E3C4 
X-CRM114-Status: GOOD (  31.10  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] include: sync <linux/stddef.h> with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 07.06.23 14:12, Ahmad Fatoum wrote:
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

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=14e83077d55f

I missed to add that before sending the patch out.

Let me know if I should resend.

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/stddef.h | 109 ++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 108 insertions(+), 1 deletion(-)
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

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



