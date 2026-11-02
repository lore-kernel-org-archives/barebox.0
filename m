Delivery-date: Mon, 02 Nov 2026 10:35:22 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNoRm-006K3E-1Y
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 10:35:22 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5B2B72007BB
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 10:35:22 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sh+qOzjO;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=ThYOKAA1;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612122;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=r9yqFM4F8VDEETkr8h8PaLTcYbwALGNiDfDU4cAzsIo=;
	b=W811f7TLN06vCfxTSEsp9KkgAOW3jX+CXqERvgvW0n0Xp/33bdKpw1foEElV6kOo8Lz0T8
	JWs00u3cWNF6oDbz4NsGOFIuomDJr40ZTEndBy2EnDWDw+YkaQOx4d+i55ReK+b9vt40wm
	ZTvXT9qXDCATW0R0p1tmjkgtty2TU45ju6EW6NdGJhjZLx+WWFQN0k0De4HG2CnCDZ5t2+
	YxL9fzUOoKnrKkzPYaNiGKhMekFnZnjp8T7R3pXxD6N4gkzb9ZJixOsfdBY5gHteAzUw4a
	CeKhwNuh4aXbTJBMRC9vgDQxYq3i5AD7dKcfhSd21njKw5rM+sNoL+DH602HsQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sh+qOzjO;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=ThYOKAA1;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793612122; a=rsa-sha256;
	cv=fail;
	b=bwJS1NzSkPpr8Jf9rv894TL8IJczrG3FwBIaUVij/VfQFQq/ImXRWydT29CbOIbnQj7sA3
	2PAL7wd6OOUeRA6fi6iDA46+o3CGhh+Z2mus9F5uZUwFaIfuQxnNWouTizVCXgLDOCXW3c
	KwOj3iaWtKUQtUvXFmvEnyhfkkQjk9jiJTU8TafYipMhych1x1TprH4/nv08QCs1vIceGH
	LQMTY//lsffcct5wpbcR9ZWdRtgYI7PQjgFqpL5Hm/gM6H0L/Ue/au9dX954KWUj+At88S
	TTWG7geHlABgPePoDyf7n39pT1YDsF5muER8qbGXyThTv0Zk5HQSW6zv7n9i+Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=r9yqFM4F8VDEETkr8h8PaLTcYbwALGNiDfDU4cAzsIo=; b=sh+qOzjOT9yqGjdFwUg5mVD0II
	61r/TTm8IbbduJNcR5hmqrIUqWtgtdnxl2pBoOv+BQ145RzuO+vwDrM56FJp0YVh5TlBbK2Ax9Brj
	2t0KDswhcllEBg7gauMjuAzH/PqQkeTXQcJArfmxO+ikJgwC7WYmDoHRiav0pYcExx9oQXrYf0hEv
	voEJDdmNhqjl06X0MUCVZ6GCU+Hmvo+3ABCTEtzuSzVSRRGH0gyC1Db3C0Auc5NUX/P+ksKlMgrMX
	YxCnYRnYOwQDpoHQaanUbq6C+7YxQ057zcHX/G1nhxmLoyOjDov9eRpXgpIOWEpLgVSp/4+HKFxpZ
	ecUNdp0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoQs-0000000G245-2Iio;
	Mon, 02 Nov 2026 09:34:26 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoQp-0000000G23F-3U6b
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 09:34:25 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1C11A20046D;
	Mon, 02 Nov 2026 10:34:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612062;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r9yqFM4F8VDEETkr8h8PaLTcYbwALGNiDfDU4cAzsIo=;
	b=ThYOKAA15ODELxh7hJjumJzBiTwMTC7tw8aSo1qfr28O6Tw/HiV4yRbolYpY3VwND1iPpH
	CQIbVGwVoB9wFZTPToZKWj+1XjL0cro2CQLIqVIQTUQ0KumLSgMMXpXJMDJ3eqE5oISDqD
	304R3+JyhP6AKqASCbtb1sPK997eD2znkuu8m3v87zi3KBZQVFdg3lVJeZdIg7Y6NRzqgg
	3matjOJKNDsOv/5DanbB39DRsBDuqWJlKDWxKj9gAWpgCxELCTPdAzO3NgwmpMQTETjqjQ
	ghew6lTtkFBA9K+UR3QV2u3Xa4Zwqt27WIVdMqDJqlnzWGsTMztd6m5Rr6gDeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612062;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r9yqFM4F8VDEETkr8h8PaLTcYbwALGNiDfDU4cAzsIo=;
	b=BWkwFzzwo+nthcg0U/YR4ama1ktFRi47PB7KuWZNjZMnsLgTX5FKyQKqjmnSEmwx6OaBKA
	J9GT7Rfw5Do5QENzJXBZFfnmRWPizJEBLp9mkbjoB9x3Qzggjhfoek+D2jkWxBiA/tksrJ
	Knz/qxjw+tA1zfluKIk9gtZspyo43k2KGtYpGeK/1VwEhprNb/D86xpT5XLne9JFy4czun
	OpTOMiefTn4IvOogX3uiFjXsIbDYfnPTSihl9UyHlRt4deJVvlW+SC9yMJkIDxbgrbQB76
	k2NF24j5b1gVIwscBsv0Buv6GXUbBmU9K+f/lV0U2ECv7W7e4KOv6QDPqWdZJw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793612062; a=rsa-sha256;
	cv=none;
	b=H6RvFgB85dxXEVL0rrNisaq2OeQhNRPAAUhxyVuSNgQYC825GvOLzgbrlmY55/1ZrWyBkQ
	s5pEk8jhUdDVSjc7W4oNLEIaCpmeWihTPjrEQdYgwhK8DNSq2JLhr3IImKiIU8e1H2vNcd
	v+pHtUrvPOz0NNsz/TT3ssCrXeFBv7FVBoH8OryyeKly6JPXQBlXFsQ5xAt6EEB/Y7i7dB
	p1EEBz7l2In8qI7EpNgVZUbWA2eKn/ihwItUGzNlm/OeD8DPC7XU0r4bTSuAqrEkaNeEsf
	x9pqYMfyJvKT4wRdI24pYOOamHJsKZArCJ19k1XLv6/fkR0o62E696Jd6RdNQg==
Message-ID: <96a1f3e2-93fc-41bb-ae89-fb7b4c33299b@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v2 1/4] fs: cramfs: don't ignore decompression errors
To: "Sascha Hauer" <s.hauer@pengutronix.de>
In-Reply-To: <20261102-fs-getlink-fixes-v2-1-37df92e4d0d3@pengutronix.de>
References: <20261102-fs-getlink-fixes-v2-0-37df92e4d0d3@pengutronix.de>
 <20261102-fs-getlink-fixes-v2-1-37df92e4d0d3@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 02 Nov 2026 09:34:21 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_013424_017959_F64A813B 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-11-02 10:31, Sascha Hauer wrote: > cramfs_uncompress_block()
    returns -EIO when a block fails to > decompress, but cramfs_read_file() stores
    that in a size_t, so its > check for an error, curr_ [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-54.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_MIXED(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: m5exnmyfbatjjrh4yggrj7zcmhj6g7no
X-Rspamd-Queue-Id: 5B2B72007BB

On 2026-11-02 10:31, Sascha Hauer wrote:
> cramfs_uncompress_block() returns -EIO when a block fails to
> decompress, but cramfs_read_file() stores that in a size_t, so its
> check for an error, curr_block_len <=3D 0, only catches empty blocks.
> The error becomes a block length of nearly SIZE_MAX: the read copies
> whatever priv->buf holds, the previous block or nothing that was ever
> written, returns it as success, and keeps it cached as the content of
> the failed block.
>=20
> Store the length in an int, so that the error ends the read.
>=20
> Fixes: b42f481fa4 ("reactivate cramfs")
> Assisted-by: Claude:claude-opus-5-5

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>


> ---
>  fs/cramfs/cramfs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
> index d66cce8df8..fcb9aeeab8 100644
> --- a/fs/cramfs/cramfs.c
> +++ b/fs/cramfs/cramfs.c
> @@ -46,7 +46,7 @@ struct cramfs_priv {
>  	struct cramfs_super super;
>  	int curr_base;
>  	char buf[4096];
> -	size_t curr_block_len;
> +	int curr_block_len;
>  	struct cdev *cdev;
>  };
> =20
> @@ -149,7 +149,7 @@ static int cramfs_read_file(struct inode *inode, unsi=
gned long offset,
>  			priv->curr_base =3D base;
>  		}
> =20
> -		copy =3D min(priv->curr_block_len, size);
> +		copy =3D min_t(size_t, priv->curr_block_len, size);
> =20
>  		memcpy(buf, priv->buf + ofs, copy);
>  		ofs =3D 0;
>=20
> --=20
> 2.47.3
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



