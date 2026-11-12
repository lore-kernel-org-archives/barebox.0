Delivery-date: Thu, 12 Nov 2026 09:22:08 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRQ4N-009y7N-2p
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 09:22:08 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 82E12200563
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 09:22:07 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=u+yYNFEi;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=O6iah9SQ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794471727;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=iyYU4lb+nvPRSlP1OqCmyD9UgfNnwWr8O14TFny5XaU=;
	b=B0htiiD5DTYXBv428DKZgm076B03LyCSEA7Q4XdkE2958kLIDfuzcD148fEiUCBhgCw++Q
	9lCojLrRyumbXZ9Sh/HTk3g0BdFrba2aFUpnBygnkZ9/RIKtpux6wR4aNur2LySddm9I5T
	F1WmCUYsZS1lRmGeYY4Io4Uvr4qVmoJwfvNwCdkimHxva7YMH+97pIE8Rn00x8hQn2yPrX
	taPEm9XKRzylKB0NnXsVVv7wW5WZgYm7HCh8XHBji/FuJSc0rbzXCKrAo+ahIKJX1lafW7
	bDWM0t/DIV74OkkXHl+Jslzps7lqzwcPvxQ3awOHPw+ljZCMAg4E/WepTQEtHw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794471727; a=rsa-sha256;
	cv=pass;
	b=eaOIMa6Upo1JwLqrzz06t6iGiGsALXlKIHdYL/3GyN4A8eHAnNZQoirdNLY2Uuk9rN+Lbs
	jFZFOgWoQqIPuuBgCCYt0I7s1l51YVxpimuGcW0nu0++SR6U18gmjiM24w5CboaLorW6Z6
	r2rECUKHAyCyv6viU9U+ivuawY/tmjdaPqZyMBOhdrJyz3RM/poT7fQy/4zUJPL9HJkyjQ
	nQ94K+nfiWT2GkAe3acgwy4DCWfGzCjo0tjRyd5fjLxqrrPb6ULEAtUxU+5yWc+0KCcg7B
	5rzY/jBmYW/58VFWV+70HvecJzwgGH8ZXMIuG74enmhZPdHNr3Jvz0whE8i2dw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=u+yYNFEi;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=O6iah9SQ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=iyYU4lb+nvPRSlP1OqCmyD9UgfNnwWr8O14TFny5XaU=; b=u+yYNFEiFxFJH3
	eaYlkY4rBZIZVMhAH0AujiGkHsehylLjtgZP79/EjvUwMUSRP4zuWZPc6MV2xqkVOeiftKshbzp3z
	32Tgaz9xu1krgfNTBs267AJ6CUA8GvjeKgp8R980/dk6UHNaxLIKoFSsyCrEyAhHy5qD3ot3GycIQ
	q7RMSltfKarQFeth79DTF+/MtQL8XQXDB90EGWT1AG01MnTti9Sxir1xGQu1XFue4c9f6J31kavRl
	uQtu9MlCmzYKs0VZ/vsuXMpx4JjUWq+LQ6gHjVLnFu9jyBDyDsaPuUp0yvICBOq9BV7gben7Y9ka6
	ERbwSb6h70VNtsziQbUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPb5-00000008yQZ-1awn;
	Thu, 12 Nov 2026 07:51:51 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPaw-00000008yPi-3gTF
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 07:51:45 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CDC6C201BFB;
	Thu, 12 Nov 2026 08:51:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794469901;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iyYU4lb+nvPRSlP1OqCmyD9UgfNnwWr8O14TFny5XaU=;
	b=O6iah9SQK9xwakOcpZZiTz0gGlrNzZTCLabtF5K9E4LtcQ+JH81R4OIxL+7TVPi6nlmmyD
	T9zgQXy0GnJWKRPUsIYubRtMcPbjS5fYEQh5DRuQPzpBgkv/gamuQXlbKXD9sWAQHaKU8n
	8coK6uXcMyZeL67SPG/xwxIgOk40eG40HcjWmVsTdmlgQQeZN267cbQACqvRNnRWt1ZdH4
	xfBgSarCM533n+PWdJqru4dffc4EI6+D20i2DEyAhOgupRAotWFkM63TVMigdtLYZI5+lI
	JfrhD57JrwIlvXUp1N8hNyxOq3YOMg4bLoekW5dg+M8fQFATeNb/Pu237SbDzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794469901;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iyYU4lb+nvPRSlP1OqCmyD9UgfNnwWr8O14TFny5XaU=;
	b=OwnQmno5E1AraF6zQo+0LEyqa0cKI/1jTaAO6q0fdbqFaxI62qInzSIn70Ta0ATPHvqcA7
	HPoxkTRuy2ARyWguJUam9zdtG7qsgZ35O6hCY0YhP9kUeJQCcDPW58456LOB+xxd+D0zox
	1237f3ex94b1QQwsDONEEPt7wloCBUcNcXNTpj7I+q+8cEsw5FtLdT2c1T53H5IM/6M9mW
	0qatnkB9oGNYBJHIe3La7OMW1i2vLpQzZhKHBXqC0F5eacQ3SG4tem9QzJbr6MW9wBcqUU
	O0RPQYicLLHQDD3pvGHXabWNk8TkV+btsXWP/qoLsQ8PnjhIOe2EC+VuUSSOEA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794469901; a=rsa-sha256;
	cv=none;
	b=eUDBSE9cAC0seu6LhYdt4eqimI2bmexnhHqG9sbo+ezR0+hYAFpgxPl3kMo+l9PVGqP8M4
	sSWlvsbuScIs6B3ehNJwgWsOG6XZWkcVj6uDmsbN021Mn7Oj3d4hDt5LyOa+NufilSzbw+
	gswbdVZO5hP3/zDNvSJ9LB7z6Wi+oEy8G4XfhIV+9Rbo3YpnKaaVSLQBw8cnc/Q/+C+Ycr
	aR22xvwn4i5bvQIi0A7ipqi9cJeUTEmsjE8tyMzDUB3cIPi6m4cPviE7zd56SnrY+ULxEN
	2G6OejviPHVs5JOWK6qhJggS60krTUsS4nAyGgSygOuFIGfUvCMKrmDUByHYJA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <cfbb48a4-62f1-48a8-a195-035e59a06b27@pengutronix.de>
Date: Thu, 12 Nov 2026 08:51:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/10] test: py: add test for reverting globalvars after
 boot
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
 <20261030-boot-globalvar-stack-v1-5-a03803e1100c@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-5-a03803e1100c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_235143_120267_4DED30D9 
X-CRM114-Status: GOOD (  23.76  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/30/26 11:54, Sascha Hauer wrote: > Add tests for the
    globalvar scope around boot entries: a failing boot > script that changes,
    creates and removes global.bootm.* and > global.linux.bootargs.* v [...] 
 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 82E12200563
X-Stat-Signature: 81t3ztqcmma6qtk9yay4hpe5pgj8gdb1
X-Rspamd-Action: no action

On 10/30/26 11:54, Sascha Hauer wrote:
> Add tests for the globalvar scope around boot entries: a failing boot
> script that changes, creates and removes global.bootm.* and
> global.linux.bootargs.* variables and changes global.of.overlay.path and
> global.linux.bootargs_append, where the configuration has them, must
> leave them as they were before, while globalvars outside the scope keep
> their new values. A

Unnecessary line break.

> second test nests boot entries like devboot does and checks that the
> outer entry's variables are visible in the inner one and survive it.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  test/py/test_boot_globalvar_scope.py | 117 +++++++++++++++++++++++++++++++++++
>  1 file changed, 117 insertions(+)
> 
> diff --git a/test/py/test_boot_globalvar_scope.py b/test/py/test_boot_globalvar_scope.py
> new file mode 100644
> index 0000000000..041d38c814
> --- /dev/null
> +++ b/test/py/test_boot_globalvar_scope.py
> @@ -0,0 +1,117 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later
> +
> +import pytest
> +from .helper import devinfo, skip_disabled
> +
> +
> +def write_bootscript(barebox, name, lines):
> +    barebox.run_check(f"echo -o /env/boot/{name} '#!/bin/sh'")
> +    for line in lines:
> +        # Variable references must reach the script unexpanded. Neither
> +        # quoting nor a backslash achieves that here, so splice in the
> +        # dollar sign from a variable.
> +        line = line.replace("$", "${dollar}")
> +        barebox.run_check(f"dollar='$'; echo -a /env/boot/{name} \"{line}\"")
> +
> +
> +def globals_now(barebox):
> +    params = devinfo(barebox, "global")["Parameters"]
> +    # devinfo prints "value (type: ...)", strip the annotation
> +    return {k: v.split(" (type:")[0].strip('"') for k, v in params.items()}
> +
> +
> +@pytest.fixture(scope="function")
> +def scope_globals(barebox, barebox_config):
> +    skip_disabled(barebox_config, "CONFIG_CMD_BOOT", "CONFIG_CMD_GLOBAL",
> +                  "CONFIG_CMD_ECHO")
> +
> +    barebox.run_check("global.bootm.image=/preset/image")
> +    barebox.run_check("global linux.bootargs.preset=preset=1")
> +    barebox.run_check("global linux.bootargs.removed=removed=1")
> +    barebox.run_check("global.bootm.appendroot=0")
> +    old_user = barebox.run_check("echo ${global.user}")[0]
> +
> +    yield old_user
> +
> +    barebox.run_check(f"global.user={old_user}")
> +    barebox.run("global -r linux.bootargs.preset")
> +    barebox.run("global -r linux.bootargs.removed")
> +    barebox.run_check("global.bootm.image=")
> +
> +
> +def test_boot_entry_reverts_globalvars(barebox, scope_globals):
> +    old_user = scope_globals
> +    before = globals_now(barebox)
> +
> +    # boot related globalvars outside of bootm.* and linux.bootargs.*,
> +    # where the configuration has them
> +    others = {var: val for var, val in (("of.overlay.path", "/does/not/exist"),
> +                                        ("linux.bootargs_append", "1"))
> +              if var in before}
> +
> +    write_bootscript(barebox, "scope", [
> +        *(f"global.{var}={val}" for var, val in others.items()),
> +        "global.bootm.image=/does/not/exist",
> +        "global.bootm.oftree=/does/not/exist.dtb",
> +        "global.bootm.appendroot=1",
> +        "global.linux.bootargs.dyn.root=root=/dev/leak",
> +        "global linux.bootargs.leak=leak=1",
> +        "global.linux.bootargs.preset=preset=2",
> +        "global -r linux.bootargs.removed",
> +        "global.user=scope-test",
> +    ])
> +
> +    # bootm fails on the nonexistent image, so boot returns
> +    barebox.run("boot scope")
> +
> +    after = globals_now(barebox)
> +
> +    # values within the boot scope are restored...
> +    assert after["bootm.image"] == "/preset/image"
> +    assert after["bootm.oftree"] == before["bootm.oftree"]
> +    assert after["bootm.appendroot"] == "0"
> +    assert after["linux.bootargs.preset"] == "preset=1"
> +    for var in others:
> +        assert after[var] == before[var]
> +
> +    # ...vars created by the boot entry are gone...
> +    assert "linux.bootargs.leak" not in after
> +    assert "linux.bootargs.dyn.root" not in after
> +    assert "linux.bootargs.dyn.ip" not in after
> +
> +    # ...vars removed by the boot entry are back...
> +    assert after["linux.bootargs.removed"] == "removed=1"
> +
> +    # ...and the loadaddrs don't come back as 0xfffffffe after a failed boot
> +    assert after["bootm.image.loadaddr"] == before["bootm.image.loadaddr"]
> +
> +    # globalvars outside the boot scope are left alone
> +    assert after["user"] == "scope-test"
> +    assert old_user != "scope-test"
> +
> +
> +@pytest.mark.usefixtures("scope_globals")
> +def test_boot_entry_scope_nests(barebox):
> +    # devboot-style: an outer entry sets up bootargs that must be visible
> +    # in, and survive, the inner boot entry
> +    write_bootscript(barebox, "scope-inner", [
> +        "global.bootm.image=/does/not/exist",
> +        "echo inner-sees ${global.linux.bootargs.outer}",
> +        "global.linux.bootargs.outer=outer=clobbered",
> +        "global linux.bootargs.inner=inner=1",
> +    ])
> +    write_bootscript(barebox, "scope-outer", [
> +        "global linux.bootargs.outer=outer=1",
> +        "boot scope-inner",
> +        "echo outer-sees ${global.linux.bootargs.outer} "
> +        "inner=${global.linux.bootargs.inner}",
> +    ])
> +
> +    stdout, _, _ = barebox.run("boot scope-outer")
> +    assert "inner-sees outer=1" in stdout
> +    assert "outer-sees outer=1 inner=" in stdout
> +
> +    after = globals_now(barebox)
> +    assert "linux.bootargs.outer" not in after
> +    assert "linux.bootargs.inner" not in after
> +    assert after["bootm.image"] == "/preset/image"
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


