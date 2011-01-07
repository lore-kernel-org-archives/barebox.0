Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PbFHw-00083H-3z
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 16:35:42 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Fri,  7 Jan 2011 17:35:29 +0100
Message-Id: <1294418133-5256-3-git-send-email-eric@eukrea.com>
In-Reply-To: <1294418133-5256-1-git-send-email-eric@eukrea.com>
References: <1294418133-5256-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/7] defaultenv/bin/update: let /env/config set default values
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

dGhpcyBwYXRjaCBhbGxvd3MgZm9yIGV4YW1wbGUgZGV2aWNlX3R5cGUgdG8gYmUgZml4ZWQgaW4g
L2Vudi9jb25maWcKKHVzZWZ1bCBmb3IgY29uZmlndXJhdGlvbnMgd2l0aCBvbmx5IG9uZSBtZW1v
cnkgdHlwZSkuCgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVyaWNAZXVrcmVhLmNvbT4K
LS0tCiBkZWZhdWx0ZW52L2Jpbi91cGRhdGUgfCAgICA0ICsrLS0KIDEgZmlsZXMgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RlZmF1bHRlbnYv
YmluL3VwZGF0ZSBiL2RlZmF1bHRlbnYvYmluL3VwZGF0ZQppbmRleCAyOWMyNDBiLi41YjM1ZGYx
IDEwMDY0NAotLS0gYS9kZWZhdWx0ZW52L2Jpbi91cGRhdGUKKysrIGIvZGVmYXVsdGVudi9iaW4v
dXBkYXRlCkBAIC0xLDEyICsxLDEyIEBACiAjIS9iaW4vc2gKIAotLiAvZW52L2NvbmZpZwotCiB0
eXBlPSIiCiBkZXZpY2VfdHlwZT0iIgogY2hlY2s9bgogbW9kZT10ZnRwCiAKKy4gL2Vudi9jb25m
aWcKKwogd2hpbGUgZ2V0b3B0ICJodDpkOmY6bTpjIiBPcHRpb24KIGRvCiBpZiBbICR7T3B0aW9u
fSA9IHQgXTsgdGhlbgotLSAKMS43LjMuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK
