Delivery-date: Fri, 30 Oct 2026 15:15:03 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMnNm-005Ar7-27
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 15:15:03 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 71CBB2016D6
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 15:15:02 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Rj0LbTSb;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=BO+QkUQH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793369702;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Zb9v5KDiBBMdrMq8XoOqBccoZj5QkAmZrt5Z3hqiVJ4=;
	b=TOfg+eQ+eyZ6kaaPRV1ANo37P93jJiok6BUZ+n65yn5fs6KSWobkznHA/tm6LTd+caeBrK
	kvgqJQpnABdV4+Drov8EfAqeErjqRAyeZqygxNHUManl3DpjPn5BW67B9e7wMllGr9igrA
	oekXmmf9eC4nCt2aSrMe46GgPCj8GVTVf/W1+rIhUGtefu5K4AL3wUsfTay2b1kDbEoqnL
	1Vq7KUs3a0iQw+vtQRBBPNawxhpt4kQmsSQT1eSyG/XF8+Jj5Fthodo8nzCUP+utjF8aLs
	MUge+IJcDBkI/Uq4f9S1uL35987j3dWOfMBKVRLb2cDxJThnJ5bW3EPwa3vmzw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Rj0LbTSb;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=BO+QkUQH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793369702; a=rsa-sha256;
	cv=fail;
	b=d1eiPYmbFkZmmMSBmE7tHMGiP5QjenL6LU75WhgQ1FgHqefUy95VcejsTlmmBfwzOoSgbW
	srIivwKVjzjOt9T6FhEqMHXOZATea94717C0DJ1m8GoUtv+UjmXccblPDZElm5iK6uff4p
	KasMPHDl98iEF6BxDby/89VAX2hm8wsLdY9g092HS1vZZ71lM4WeZMp/8DWA04fk+g2X2C
	2qbR250MJC8B9AOZjEwfH3RW74pYdgRBCkUxu/LX2uA9lxj0OhS9m9MWuLJ44aDgZ6WJZ1
	GD9u7yKulcNSnprzr/X0BRL3tPbCRpPbJApDXYtZaNRwnrWCMZBbEFL4TQWfJg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Zb9v5KDiBBMdrMq8XoOqBccoZj5QkAmZrt5Z3hqiVJ4=; b=Rj0LbTSbLJun+i
	txDQqIUGI8jxHTBvkm57TZPKiNj1aEWk+ESZqN03J0IqUEeZ/ZFXZQmHPidpneP9UTeCBQi/pqsN3
	ViU+fa61s5CkdKL5urt2q6UscHo4CI4EQUR6i3anzjoAnGwKVFCxO52pxedxjyT3q8BvV8oh0/TVj
	6OAaDu82I3ouiUj2sgEo4fDczrIvZVKj2qf5h+s16LVefWBnqqp5EBzDDNZAEv7+Ybmv/BO0hvooK
	HN5ZbqZzdKhIJHIRSOpQRGDfbi44nij2yfsyFOXX6az+24qNL7e1STB1bPKlFjjMZqk/bMLMWFZtp
	we6PORFI4e7O3XTKro/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnMS-0000000BqjV-0C0t;
	Fri, 30 Oct 2026 14:13:40 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnMN-0000000BqhD-30L8
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 14:13:38 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B26B7202962;
	Fri, 30 Oct 2026 15:13:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793369612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Zb9v5KDiBBMdrMq8XoOqBccoZj5QkAmZrt5Z3hqiVJ4=;
	b=BO+QkUQHJ0U3kD0WtJzfp1tx6/huCvoTlKW8rSFsolNVl6FV2RKwyBY3srA4YIDp7khg8F
	MIWTq+1lXM/LP3nrm4HrfztV3fy+YIEobux98XzdjMgEiv3c9e7OuiPHOzOiHopWYLKAOV
	IPYK+yu1bRxRXAXXyoRtiGkivU4zQ5/6MlcAR175Hx9z2J7ypKlDKC5O6Dbt5V7+MzVU7X
	PjpqaahwQZD9pIZSWU63pLjTRkAc+XbhsISruROsMF+njKlLJHqSaVV5aBh/L+pC4WpVwa
	BqjVZW25k+ez53m0ZVqyJ6p2Knq32PA3O5w/97jTkIWcgrVojdDYTQJ0bv6eBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793369612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Zb9v5KDiBBMdrMq8XoOqBccoZj5QkAmZrt5Z3hqiVJ4=;
	b=BZU8aZY+6BjEvXwx9C8+B+UuyOxavkt9MAWTJJSKtnRmgf+kK16kbRfgSW/TnSzQRU8cyn
	aYOIpqVW6yJT/OvmK9BOkiiLnPkP8rqHJF7lqDzsA50Mm+cfuHn7uQwvh181r89bfbEI6N
	y5Vd2CWTfpnPPlIcSKv4TD43UR4Mq5uCVOjPvmMgpRlozOtIxSE/mrS3OJW3il7jfnlQaB
	KjqaotCLFEVzcV3UQGOu9Qq6TlE5KJKvaMAPiB6BDghDpfOIPya1S6IAILJqktv3BDxUTP
	+EQEpIf2EnnVYzq3c0zl09HIWoJPgsJyXZaGGrQjH8g7LjtbFeVOkWU0vRBu1A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793369612; a=rsa-sha256;
	cv=none;
	b=YQqS7wm/2t63Zum1SW8MvolF3ZKUuey58CH6kn+2A2EEHU/dDPMV48uXGxrQ27pd9AOP8e
	rW057qADbxBDdnSuwnD2T9P27Hm+WxjB+FgAj6UfxarFBvY9sqsMosEThS8lO0kscNt3xo
	JRd9wjpF3LWmr/yVRDCRPpaFKNjlI5ZYPjG+IrxGUq//LMK7fKgwdWUhKYYcHkGm9k4/77
	m2fmYbeUKHKDAgzxKRBpnpq5FVSKPtEt/q+dnklxWNSpvN/nlXqCg7KLR2sHN2E1yw5s5/
	aTwJG6b3I40quIDL7FqDafNFD2aGxBpxiY9zCQ3chn5Ch623M7wN8I56kSdD+g==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 15:13:29 +0100
Subject: [PATCH 2/5] hush: export source_script()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-devboot-v1-2-ab9dd3a92c66@pengutronix.de>
References: <20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de>
In-Reply-To: <20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793369612; l=2684;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=yGCXnTXC3wyrQOFI6PsMaxZHCd4asZr0uvWvziIZPWU=;
 b=tlwBkCW0QmHpAS93goIV6uIurIpA0wuip+wMEGV/sW+PxogF4MxiIop9ozKMFFg78XpbzF7i9
 c9Ti8ciyeIjD+G38iu4SxUATf4I8VPRPzmTZCuS1OefwCLT62lF+3V8
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_071335_913719_8F46AD44 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  C code that wants to source a shell script has to go through
    run_command("source ..."), which parses the command line and looks the script
    up in the PATH. Export source_script() instead. As the simple parser can't
    source scripts, it gets a stub returning -ENOSYS. Unlike its callers in hush,
    source_script() can now be called directly, so check the securi [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: rms4yhqgqzqjw1fqb9aze1xqkqi98tos
X-Rspamd-Queue-Id: 71CBB2016D6

C code that wants to source a shell script has to go through
run_command("source ..."), which parses the command line and looks the
script up in the PATH.

Export source_script() instead. As the simple parser can't source
scripts, it gets a stub returning -ENOSYS. Unlike its callers in hush,
source_script() can now be called directly, so check the security policy
in it, like run_command() and execute_script() do.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c   | 17 +++++++++++++++--
 include/shell.h |  8 ++++++++
 2 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index ac885fbfe7..c5809b32cd 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -329,7 +329,6 @@ static char **make_list_in(char **inp, char *name);
 static char *insert_var_value(char *inp);
 static int set_local_var(const char *s, int flg_export);
 static int execute_script(const char *path, int argc, char *argv[]);
-static int source_script(const char *path, int argc, char *argv[]);
 
 static int b_check_space(o_string *o, int len)
 {
@@ -1975,12 +1974,26 @@ static int execute_script(const char *path, int argc, char *argv[])
 	return ret;
 }
 
-static int source_script(const char *path, int argc, char *argv[])
+/**
+ * source_script - execute a shell script in the current environment
+ * @path: path of the script
+ * @argc: number of positional parameters, including $0
+ * @argv: positional parameters, starting with $0
+ *
+ * Unlike executing a script, variables set by it remain set in the current
+ * environment context after it returns.
+ *
+ * Return: exit status of the last command executed, or a negative error code
+ */
+int source_script(const char *path, int argc, char *argv[])
 {
 	struct p_context ctx = {};
 	char *script;
 	int ret;
 
+	if (!IS_ALLOWED(SCONFIG_SHELL))
+		return -EPERM;
+
 	initialize_context(&ctx, true);
 
 	ctx.global_argc = argc;
diff --git a/include/shell.h b/include/shell.h
index b399564ff3..a0c3414fa6 100644
--- a/include/shell.h
+++ b/include/shell.h
@@ -6,17 +6,25 @@
 #ifndef __SHELL_H__
 #define __SHELL_H__
 
+#include <linux/errno.h>
+
 int shell_get_last_return_code(void);
 
 int run_shell(void);
 
 #ifdef CONFIG_SHELL_HUSH
 char *shell_expand(char *str);
+int source_script(const char *path, int argc, char *argv[]);
 #else
 static inline char *shell_expand(char *str)
 {
 	return strdup(str);
 }
+
+static inline int source_script(const char *path, int argc, char *argv[])
+{
+	return -ENOSYS;
+}
 #endif
 
 #ifdef CONFIG_BAREBOX_CMDLINE

-- 
2.47.3



