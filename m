Delivery-date: Mon, 09 Jan 2023 07:17:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pElTU-006Nxp-24
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 07:17:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pElTS-0001h0-5v
	for lore@pengutronix.de; Mon, 09 Jan 2023 07:17:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
	References:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WCToyuF0LhLfMDeCm9HONGq6KNWxav1/4PeCyKUR/oI=; b=A5xGx76CpZt40pNIOOJe7Tihfp
	3TIqbGTkTvuCFxCTWuFC1Gmzm/qcMsK4XN+a24eQ5WXJi7zkYIucdzSVvWCsgxsc+sNJcVsOecwEH
	K6+Ax1p5Yh5YRWilAoRHBxAJdACItaa6Dp/nRkfpbDOtzN/JZACzha9ATxXgSbNDYTk95YrqaWeO9
	Lal74VUP++5GQyl1UlhiachVDwIAZa3Nv6RTYzXGYTPA10OceBTqzYKT0vTOoEE3k6hgPQozfHmK3
	Om2JP5WaMa7sRugrVVk0dvCGTTF2yNwRVdD8LKkXkP1GGTD43IuWwAV/rRB9pNfEZBrEUy/ImDVEJ
	WGqd1RwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pElSA-00HZ4h-NE; Mon, 09 Jan 2023 06:16:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pElS4-00HZ3I-8z
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 06:16:10 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1pElS1-0001Wg-6Z; Mon, 09 Jan 2023 07:16:05 +0100
Received: from uol by pty.hi.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1pElS0-009u87-Oj; Mon, 09 Jan 2023 07:16:04 +0100
References: <20230106150143.612182-1-u.oelmann@pengutronix.de>
 <CAP1tNvTmOs2uDKhy6XK5K8sqEb9GvuN1OQd5F_nQDex4MiTXGA@mail.gmail.com>
User-agent: mu4e 1.6.9; emacs 29.0.50
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Date: Mon, 09 Jan 2023 07:15:11 +0100
In-reply-to: <CAP1tNvTmOs2uDKhy6XK5K8sqEb9GvuN1OQd5F_nQDex4MiTXGA@mail.gmail.com>
Message-ID: <6rcz7o5j2z.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_221608_331505_F481688D 
X-CRM114-Status: GOOD (  19.15  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: partition: moan if adding a partition failed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Alexander,

On Sun, Jan 08 2023 at 16:34 +0300, Alexander Shiyan <eagle.alexander923@gm=
ail.com> wrote:
> Hello.
> Can you fix also double semicolon at line:
> new->device_node =3D node;;

just sent a v2.

Best regards
Ulrich


> =D0=BF=D1=82, 6 =D1=8F=D0=BD=D0=B2. 2023 =D0=B3. =D0=B2 18:03, Ulrich =C3=
=96lmann <u.oelmann@pengutronix.de>:
>>
>> Do not silently continue if e.g. the label of a partition defined in the
>> devicetree collides with the name of a partition defined in a GPT on the=
 device.
>>
>> Signed-off-by: Ulrich =C3=96lmann <u.oelmann@pengutronix.de>
>> ---
>>  drivers/of/partition.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/of/partition.c b/drivers/of/partition.c
>> index abbda674d6cb..b414985555b4 100644
>> --- a/drivers/of/partition.c
>> +++ b/drivers/of/partition.c
>> @@ -67,8 +67,10 @@ struct cdev *of_parse_partition(struct cdev *cdev, st=
ruct device_node *node)
>>         filename =3D basprintf("%s.%s", cdev->name, partname);
>>
>>         new =3D devfs_add_partition(cdev->name, offset, size, flags, fil=
ename);
>> -       if (IS_ERR(new))
>> +       if (IS_ERR(new)) {
>> +               pr_err("Adding partition %s failed: %pe\n", filename, ne=
w);
>>                 new =3D NULL;
>> +       }
>>
>>         if (new)
>>                 new->device_node =3D node;;
>> --
>> 2.30.2
>>
>>
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


