Delivery-date: Sat, 03 Apr 2021 14:02:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSeyj-0001MN-1l
	for lore@lore.pengutronix.de; Sat, 03 Apr 2021 14:02:13 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSeyi-0002Po-7j
	for lore@pengutronix.de; Sat, 03 Apr 2021 14:02:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7F06/H9/6ZTyKnB9NfSxISbEAt9PcMNVcBxvO5CqAXo=; b=EyFIVHppofDCkOF6PP9jPCaju
	3HvlZT0GxYwOXnoRsFtxvicKq9YjLD75Epl/pO/O6rZ7SKhNLqe8eT+wa6bX6csMWl8MBt2UWxi5z
	DuZLFZVsuplqxsyhIW2CVcgl7Vzh37qMXsno57IUVSUQnsP3FyDitZn59s5g+FDWAOpvGj3cIxYKZ
	WUDala4uOK7zc8nYd8rSewcDatNrNm2HWcsKx1U+rxCQ7FRWKTgiwefsuaXbeJep6H7ee4ITqY+sa
	IxvOP4zvlbCwsXJQjMwPDT4C669MJkPQ1q9YZK6LekckoU1TUQwhhDtbfcfV40neCydsVKtH52HRV
	z+t2A9PPA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSexX-00EdUf-1R; Sat, 03 Apr 2021 12:00:59 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSexP-00EdUH-HC
 for barebox@lists.infradead.org; Sat, 03 Apr 2021 12:00:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 1CD3B1A6148
 for <barebox@lists.infradead.org>; Sat,  3 Apr 2021 12:00:47 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KN1OPLKY;
 Sat, 03 Apr 2021 12:00:46 +0000 (UTC)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by mib.mailinblack.com (Postfix) with ESMTPS id E65E91A6147;
 Sat,  3 Apr 2021 12:00:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id BF0BE27E03AE;
 Sat,  3 Apr 2021 14:00:46 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Hap2u9gU-53x; Sat,  3 Apr 2021 14:00:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 2A05927E0423;
 Sat,  3 Apr 2021 14:00:46 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 2A05927E0423
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1617451246;
 bh=NwKx7aAg4MTELDI2r7aJGT3eXUcTiPOPgnw6UVZ846E=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=Fk8hMdQSKfdpXmXTLAUeuJI4G1oVwt4clp2haqOlkg+61Bu5rMhohrHb/Y6u+qBCH
 /422HuabOgTcBvkmM0LOx7AmnzcX8oIXLO7CK35NMUlxgfxP2YOTGt7rJ/J3B7KhOy
 NjaPXdeQcIyGA2RGD/3lLtLuvkN2WvMRqqQHOB1I=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id gjy4CyqoOH_T; Sat,  3 Apr 2021 14:00:46 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 14D1B27E03AE;
 Sat,  3 Apr 2021 14:00:46 +0200 (CEST)
Date: Sat, 3 Apr 2021 14:00:37 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210403120037.GA18977@tellis.lin.mbt.kalray.eu>
References: <20210403070237.3642189-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210403070237.3642189-1-ahmad@a3f.at>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210403_130051_720658_24E25CA4 
X-CRM114-Status: GOOD (  23.36  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] PBL: fdt: implement fdt_device_get_match_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Sat, Apr 03, 2021 at 09:02:34AM +0200, Ahmad Fatoum wrote:
> Currently, the generic DT image can't properly have a PBL console,
> because it's only known at runtime what system we are running on.
> 
> As we already parse the FDT in the PBL to get the memory regions, we
> could extract the board compatible as well and determine which UART to
> use. Add a helper to achieve this.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  include/pbl.h |  9 +++++++++
>  pbl/fdt.c     | 36 ++++++++++++++++++++++++++++++++++++
>  2 files changed, 45 insertions(+)
> 
> diff --git a/include/pbl.h b/include/pbl.h
> index 194d5e750839..f58daec7351a 100644
> --- a/include/pbl.h
> +++ b/include/pbl.h
> @@ -34,4 +34,13 @@ ssize_t pbl_fat_load(struct pbl_bio *, const char *filename, void *dest, size_t
>  
>  void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize);
>  
> +struct fdt_device_id {
> +	const char *compatible;
> +	const void *data;
> +};
> +
> +const void *
> +fdt_device_get_match_data(const void *fdt, const char *nodepath,
> +			  const struct fdt_device_id ids[]);
> +
>  #endif /* __PBL_H__ */
> diff --git a/pbl/fdt.c b/pbl/fdt.c
> index b4a40a514b8b..03260cb61971 100644
> --- a/pbl/fdt.c
> +++ b/pbl/fdt.c
> @@ -68,3 +68,39 @@ err:
>  	pr_err("No memory, cannot continue\n");
>  	while (1);
>  }
> +
> +const void *fdt_device_get_match_data(const void *fdt, const char *nodepath,
> +				      const struct fdt_device_id ids[])
> +{
> +	int node, length;
> +	const char *list, *end;
> +	const struct fdt_device_id *id;
> +
> +	node = fdt_path_offset(fdt, nodepath);
> +	if (node < 0)
> +		return NULL;
> +
> +	list = fdt_getprop(fdt, node, "compatible", &length);
> +	if (!list)
> +		return NULL;
> +
> +	end = list + length;
> +
> +	while (list < end) {
> +		length = strnlen(list, end - list) + 1;
> +
> +		/* Abort if the last string isn't properly NUL-terminated. */
> +		if (list + length > end)
> +			return NULL;
> +
> +		for (id = ids; id->compatible; id++) {
> +			if (strlen(id->compatible) == length &&
> +			    !memcmp(list, id->compatible, length))
> +				return id->data;
Why not using strcmp, or even strcasecmp as done by of_compat_cmp ?
If both string doesn't have the same length, strcmp will report a diff.

> +		}
> +
> +		list += length;
> +	}
> +
> +	return NULL;
> +}
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

