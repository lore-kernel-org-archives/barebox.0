Delivery-date: Fri, 19 Nov 2021 13:37:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo39T-0006e5-62
	for lore@lore.pengutronix.de; Fri, 19 Nov 2021 13:37:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo39S-0007ZI-Av
	for lore@pengutronix.de; Fri, 19 Nov 2021 13:37:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uf6XhscjtzowtT1lxjUJqrhJJiATQSR7zN9gcDBjHIk=; b=PkiWvt+Eq+BChpq6Qiu5Fjx+k9
	LeMYur6/kG84AwZUfhYPEUjEcYxtHMjZWHgtPh4CpWTZLwTKf3rGqGFgnSrp/qwXRA7iLOrE0ytns
	JwM37VsrV5z/t8oNWL4PV56axE2vc363qMahpryHUst3fZgEph/ekqSA2EhLanaOSF/hNWQXhJ52O
	E5F7gVybMpCljPEV19s+pFNBhdBGmnchWokhk0sPPnc/oT7RiLA/9ARNoKkDfVTiYlYQuMDuNS65O
	v/YqDrwEBNHLiMazgRQJjmHzwRoRZLfSzGUnPN8nKuznhBIjA/dLH0POY19jNqL91HC8SA+/t1RJ2
	tW2fUISQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo37m-00AOIC-Qz; Fri, 19 Nov 2021 12:36:14 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo37f-00AOGk-FH
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 12:36:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YX9YryDMd6l+e2ZGEOqzSwXUD9R9xR8lsV7ttLmYdzs=; b=nVKacgDFhKpj2q/ORwb4VAEujm
 3nZc3vluA/wlEHJyCZgkU34v2bcj51oFKxe0iix7nMW1phvwG455Z9MJoR98z3UpR7By58qF3nz1e
 ZjjPSM8mSaGxLJfjbrt5Ur70tScQYObdgQzr4+V+B4mPbwG95A56zHBY5LOPcbz1L92/xdNPWU1RE
 OESyRDu2uZLQ3GxefJwmWiM5k45h/Tet00LkkSThpjwtCPircVNPYJ2ZqDqLWar5IFiVQ4ouO90n/
 9I3lAkqXXK2w0jEudSmwnwu0C7y0xjmYaHlZy9bOm21mYv0tUMS7n/OPAoNAanmIc4QLvetU5TIlj
 L8QAzCjg==;
Received: from [89.212.21.243] (port=56176 helo=[192.168.69.215])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1mo37T-00ETz8-Gn; Fri, 19 Nov 2021 13:35:55 +0100
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: barebox@lists.infradead.org
References: <20211119095429.1905473-1-andrej.picej@norik.com>
 <20211119095429.1905473-5-andrej.picej@norik.com>
 <CAMHeXxPD9eOdamfmB84e76YtMrifo663zt7cnDN7Qd=iENQdfA@mail.gmail.com>
From: Andrej Picej <andrej.picej@norik.com>
Message-ID: <db386b55-9e27-f097-10f7-91bd3a9c1515@norik.com>
Date: Fri, 19 Nov 2021 13:35:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAMHeXxPD9eOdamfmB84e76YtMrifo663zt7cnDN7Qd=iENQdfA@mail.gmail.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_043607_874262_55110570 
X-CRM114-Status: GOOD (  11.14  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/6] regulator: allow use of dummy regulator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 19. 11. 21 11:49, Trent Piepho wrote:
> On Fri, Nov 19, 2021 at 1:55 AM Andrej Picej <andrej.picej@norik.com> wrote:
>>
>>          ret = of_device_ensure_probed(node);
>> -       if (ret)
>> +       if (ret) {
>> +               /*
>> +                * If "barebox,allow-dummy-supply" property is set for regulator
>> +                * provider allow use of dummy regulator (NULL is returned).
>> +                * Check regulator node and its parent if this setting is set
>> +                * PMIC wide.
>> +                */
>> +               node_parent = of_get_parent(node);
>> +               if (of_get_property(node, "barebox,allow-dummy-supply", NULL) ||
>> +                   of_get_property(node_parent, "barebox,allow-dummy-supply", NULL)) {
>> +                       dev_dbg(dev, "Allow use of dummy regulator for " \
>> +                               "%s-supply\n", supply);
>> +                       ri = NULL;
>> +                       goto out;
>> +               }
>> +
>>                  return ERR_PTR(ret);
> 
> This return, which was added in "common: add initial barebox
> deep-probe support", is a memory leak of propname.  It should be goto
> out.
> 

You are right, if that's ok I will create a separate patch for that.

BR, Andrej

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

