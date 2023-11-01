Delivery-date: Wed, 01 Nov 2023 10:14:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qy7JR-00DRaS-FN
	for lore@lore.pengutronix.de; Wed, 01 Nov 2023 10:14:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qy7JM-0002w0-Ox
	for lore@pengutronix.de; Wed, 01 Nov 2023 10:14:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dsu9Cl1yms5xv0kiiBYA0WtcD5x+jeigag7Ljr5xfFU=; b=eI5CAN0cAYhDLDMzvflQrNZ+ty
	U1nzytEPp/UK/TkvGxhHlbvZOJE+cCvPR7ZFaKLtcZ9nN/UkeNhPODve0E8MNK2sWPzzZ7/B3PigU
	+HvWCGYm8QZdQvi/x2SE6TsJY81GmZ8ofIJiMJxHEWUEiIcEh0Y9EIR6CIjpowm+Y4PFbHf3EH+WH
	ROg8Y78Kosl7UTTD9qcrl42Pvjk4Ym8QwTnO7pbh5m8yhzFJ9YHpJCV+HgKOWUks3KtZSVYNmT5sn
	+IX+tg3d7VC7yLjMDBtZ3ARVgdbIKRr9GW1k09QskINOuXl1DDIZECLnf5KBfY4i9pI0MBRcJStBp
	7GpXPYLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qy7I2-006w6u-2b;
	Wed, 01 Nov 2023 09:13:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qy7Hw-006w6G-2m
	for barebox@lists.infradead.org;
	Wed, 01 Nov 2023 09:13:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qy7Hv-0002kn-Ig; Wed, 01 Nov 2023 10:13:23 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qy7Hv-005lxc-6N; Wed, 01 Nov 2023 10:13:23 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qy7Hv-00HPWQ-4A; Wed, 01 Nov 2023 10:13:23 +0100
Date: Wed, 1 Nov 2023 10:13:23 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231101091323.GH3359458@pengutronix.de>
References: <20231023143122.1760217-1-a.fatoum@pengutronix.de>
 <20231023143122.1760217-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023143122.1760217-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231101_021324_904908_59D5E74A 
X-CRM114-Status: GOOD (  19.35  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/3] crypto: add JSON Web Token (JWT) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 23, 2023 at 04:31:22PM +0200, Ahmad Fatoum wrote:
> diff --git a/crypto/jwt.c b/crypto/jwt.c
> new file mode 100644
> index 000000000000..146ddeff1e8b
> --- /dev/null
> +++ b/crypto/jwt.c
> +struct jwt *jwt_decode(const char *token, const struct jwt_key *key)
> +{
> +	const char *alg_name = jwt_alg_names[key->alg];
> +	enum hash_algo hash_algo;
> +	const char *payload, *signature, *end;
> +	u8 *sigbin;
> +	size_t sig_len, sigbin_len;
> +	struct jwt *jwt;
> +	u8 *hash;
> +	int ret;
> +
> +	token = jwt_split(token, &payload, &signature, &end);
> +	if (IS_ERR(token))
> +		return ERR_CAST(token);
> +
> +	sig_len = end - signature;
> +
> +	switch (key->alg) {
> +	case JWT_ALG_RS256:
> +	case JWT_ALG_RS384:
> +	case JWT_ALG_RS512:
> +		if (sig_len == 0)
> +			return ERR_PTR(-EILSEQ);
> +
> +		sigbin = xzalloc(sig_len);
> +		sigbin_len = decode_base64url(sigbin, sig_len, signature);
> +
> +		hash_algo = digest_algo_by_jwt_alg(key->alg);
> +		hash = do_hash(token, signature - token - 1, hash_algo);
> +		if (IS_ERR(hash)) {
> +			free(sigbin);
> +			return ERR_CAST(hash);
> +		}
> +
> +		ret = rsa_verify(key->material.rsa_pub, sigbin, sigbin_len, hash,
> +				 hash_algo);
> +		free(hash);
> +		free(sigbin);
> +		if (ret < 0) {
> +			pr_debug("%s signature does not match: %pe\n",
> +				 alg_name, ERR_PTR(ret));
> +			return ERR_PTR(ret);
> +		}
> +
> +		break;
> +	default:
> +		return ERR_PTR(-ENOSYS);
> +	}
> +
> +	pr_debug("verification for algo %s ok\n", alg_name);
> +
> +	jwt = xzalloc(sizeof(*jwt));
> +
> +	ret = jwt_part_parse(&jwt->header, token, payload - token - 1);
> +	if (ret || !jwt_header_ok(jwt, key->alg)) {
> +		ret = ret ?: -EINVAL;
> +		pr_debug("failed to parse header: %pe\n", ERR_PTR(ret));
> +		goto err;
> +	}
> +
> +	ret = jwt_part_parse(&jwt->payload, payload, signature - payload - 1);
> +	if (ret) {
> +		ret = ret ?: -EINVAL;

Dropped this superfluous line while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


