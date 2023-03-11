Delivery-date: Sat, 11 Mar 2023 03:40:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pap9P-00Gts6-6o
	for lore@lore.pengutronix.de; Sat, 11 Mar 2023 03:40:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pap9O-0003IC-LU
	for lore@pengutronix.de; Sat, 11 Mar 2023 03:40:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HqjQ8JlEQKuUyV+WIa0Lxz0sBHdD3KUkil3H4y4mo+w=; b=GWHALvms9aB3IF
	O5KiIRponJC/kLtvMTPLDHnjP8Vm+txN8IFPbKtzujdMHyESBRJaNL/Gs8ys8QuEZJfm93MDLGlIX
	vexYnVBR1heFMjN5hrg+RRTQ92HpJSZwNT6XB6GQXGCwD6Zvt1aUqog4NM3VIgwxVqkqgE92di/NA
	9+VEzAXe9Jt7xHY41g7opntdWcFdcZBFE0d84BTo5L7R5J1lYIBp6kVyhbSE91JlWi4OtwF6cfd2A
	OlyC5IkRwnyc5unLsVm+hgdP8fl8RwpFiZoE0TQrJ375G3aVkDU7cHYl0Mi8G8hfYRHYu6SrYTzhO
	bLL2MFggCmNAHz1Kz2NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pap7f-00Gyeb-Lu; Sat, 11 Mar 2023 02:38:15 +0000
Received: from mail-il1-x12a.google.com ([2607:f8b0:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pap7Z-00Gye2-UU
	for barebox@lists.infradead.org; Sat, 11 Mar 2023 02:38:12 +0000
Received: by mail-il1-x12a.google.com with SMTP id j8so4085785ilf.4
        for <barebox@lists.infradead.org>; Fri, 10 Mar 2023 18:38:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1678502287;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HqjQ8JlEQKuUyV+WIa0Lxz0sBHdD3KUkil3H4y4mo+w=;
        b=BNvkRIMwLQVyPQE2KQBlS+AZx9fxAzS9KdyzuWbwoaZIgQd4c2jDssHRuPTy8SW77G
         /fi9Ui412yRHrT3Oz+AGG0LaxqMXOiTDvLcmFev/cSpP/dgXX2QBwyBhIAZ7LoVcuXaS
         wskjNf6mk96Wvg1OQ1KTpncPiHfDDZe4TQW5c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678502287;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HqjQ8JlEQKuUyV+WIa0Lxz0sBHdD3KUkil3H4y4mo+w=;
        b=vUc5zdVsBvLp1kag5+z/AILjo/+DXseqxsJlio6oqBOtnqXvucDdBjPPIES+SNo7zA
         Rt7BCMRe4X6coELaUkTAwiBSen0BNaiph+6Qa8wZVJby3QRHHEUmjbJyVCkS1YYYTz50
         7zaEhIrb85SbrwL6OUnGXo7lgzP8K46BsO/O5cAesD3oQF6L8royoMDURA0JfMnvw1CP
         lPIHJNq/Pi2H+9sLfjKnlendR4jJWpDVu6u8bjvfJS0zesTX9FNxwyY1z8/zO9p69F9C
         KG4/S93BBIP6z1XpQTJ5mkQ8Z1IMm1X2vo7Er/yPbUALzLzq6ZerERfUyZ0GOu1hpWcE
         mkag==
X-Gm-Message-State: AO0yUKWTsznK44SnO80xkReD3hPpT7n6nx263TKTFyqCvVo1BehbxPJz
	igQo/QVDP2dvtyJbaisYF7KVdQ==
X-Google-Smtp-Source: AK7set8cApqMBhGRp8TbZYxrzy8LGvCw+VyO4cdmPbWYOM5NCFQcB9e98YGg2pTAX/tbrpgaXjsojA==
X-Received: by 2002:a05:6e02:1447:b0:317:9c05:e8e8 with SMTP id p7-20020a056e02144700b003179c05e8e8mr8582538ilo.10.1678502287539;
        Fri, 10 Mar 2023 18:38:07 -0800 (PST)
Received: from sjg1.roam.corp.google.com (c-73-14-173-85.hsd1.co.comcast.net. [73.14.173.85])
        by smtp.gmail.com with ESMTPSA id m6-20020a6b7c06000000b0071664d0a4d7sm409633iok.49.2023.03.10.18.37.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 18:37:50 -0800 (PST)
From: Simon Glass <sjg@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 10 Mar 2023 18:37:18 -0800
Message-Id: <20230310183717.RESEND.1.Idaaf79c3e768b85750d5a7eb732052576c5e07e5@changeid>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_183810_024445_40735C2B 
X-CRM114-Status: GOOD (  27.80  )
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
Cc: Tom Rini <trini@konsulko.com>, Nicolas Schier <nicolas@fjasle.eu>, barebox@lists.infradead.org, U-Boot Custodians <u-boot-custodians@lists.denx.de>, Jonathan Corbet <corbet@lwn.net>, Nick Desaulniers <ndesaulniers@google.com>, linux-doc@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, U-Boot Mailing List <u-boot@lists.denx.de>, Masahiro Yamada <yamada.masahiro@socionext.com>, Masahiro Yamada <masahiroy@kernel.org>, Simon Glass <sjg@chromium.org>, linux-kbuild@vger.kernel.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RESEND PATCH] kconfig: Proposed language extension for multiple builds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

(I am sending this again to get more feedback)

In the case of Linux, only one build is produced so there is only a
single configuration. For other projects, such as U-Boot and Zephyr, the
same code is used to produce multiple builds, each with related (but
different) options enabled.

This can be handled with the existing kconfig language, but it is quite
verbose, somewhat tedious and very error-prone, since there is a lot of
duplication. The result is hard to maintain.

Describe an extension to the Kconfig language to support easier handling
of this use case.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 Documentation/kbuild/kconfig-language.rst | 134 ++++++++++++++++++++++
 1 file changed, 134 insertions(+)

diff --git a/Documentation/kbuild/kconfig-language.rst b/Documentation/kbuild/kconfig-language.rst
index 858ed5d80defe..73fb016a5533f 100644
--- a/Documentation/kbuild/kconfig-language.rst
+++ b/Documentation/kbuild/kconfig-language.rst
@@ -228,6 +228,24 @@ applicable everywhere (see syntax).
   enables the third modular state for all config symbols.
   At most one symbol may have the "modules" option set.
 
+- phase declaration: "defphase"
+  This defines a new build phase. See `Build Phases`_.
+
+- default phase: "phasedefault"
+  This indicates the default build phase. See `Build Phases`_.
+
+- add entries for phases: "addphases"
+  This creates new phase-specific entries based on a template entry and adds
+  the same attributes to it. See `Build Phases`_.
+
+- set entries for phases: "setphases"
+  This sets the phases which need an entry. This allows creating an entry that
+  only has a primary phase. See `Build Phases`_.
+
+- indicate a phase-specific attribute: "forphases"
+  This marks an attribute as being applicable only to a particular phase or
+  group of phases.  See `Build Phases`_.
+
 Menu dependencies
 -----------------
 
@@ -319,6 +337,119 @@ MODVERSIONS directly depends on MODULES, this means it's only visible if
 MODULES is different from 'n'. The comment on the other hand is only
 visible when MODULES is set to 'n'.
 
+Build Phases
+------------
+
+Some projects use Kconfig to control multiple build phases, each phase
+resulting in a separate set of object files and executable. This is the
+case in U-Boot [12]_. Zephyr OS seems to be heading this way too [13]_.
+
+Generally the phases are related, so that enabling an entry in the primary
+phase also enables it by default in the others. But in some cases it may
+be desirable to use separate conditions for each phase.
+
+All phases have a phase name, for example `SPL`. This name is used as a
+prefix to each entry used in that phase, with an underscore in between.
+So if FOO is the primary entry, the equivalent entry for the SPL phase
+is SPL_FOO. The primary phase is marked with a "phasedefault" entry.
+
+Phases are declared like any other menu entry except that also have a
+"defphase" keyword. Phase entries are normally hidden so do not have a
+prompt::
+
+    config PPL
+        bool
+        defphase "Primary Program Loader"
+        phasedefault
+        help
+          This is the primary bootloader.
+
+    config SPL
+        bool
+        defphase "Secondary Program Loader"
+        help
+          This is used to set up memory and load the primary bootloader.
+
+The default phase (here PPL) is assumed for all entries, in the sense that
+all entries are present in PPL by default and no prefix is needed on these
+entries. So FOO means that it applies to PPL. There must be exactly one
+default phase.
+
+The resulting menu entries can be used normally throughout the Kconfig. With
+this technique, the different build phases can be fully and individually
+controlled from Kconfig.
+
+However it is not ideal. Often the secondary phases have far fewer entries than
+the primary phase, since they offer fewer features. Even so, each FOO that is
+needed in a phase must have an SPL_FOO, etc. To avoid an explosion of entries,
+it is possible to indicate which are enabled, as a shortcut for creating new
+entries::
+
+    config FOO
+        bool "Enable foo feature"
+        addphases SPL
+        depends on %BAR
+        depends on QUX
+        forphases SPL depends on FIZZ
+
+Note that "%" expands to the phase, so this is equivalent to (ignoring BAR)::
+
+    config FOO
+        bool "Enable foo feature"
+        depends on BAR
+        depends on QUX
+
+    config SPL_FOO			   # Phase is prepended
+        bool "Enable foo feature (SPL)"    # Suffix is added
+        depends on SPL_BAR                 # "%" dependency is expanded
+        depends on QUX
+        depends on FIZZ                    # Added only for SPL
+        depends on SPL                     # Added automatically
+
+Attributes declared in the primary symbol FOO (such as "depends on BAR") also
+apply to the secondary ones.
+
+An entry without any 'addphases' attribute applies to all phases. Individual
+phase entries are not available in that case. If the entry is enabled, then
+it is enabled for all phases. Only one entry appears in the resulting Kconfig.
+
+In the case where an entry should apply only to the primary phase (or a
+particular set of phases), you can uses "setphases" instead of "addphases"::
+
+    config FOO
+        bool "Enable foo feature"
+        setphases PPL
+
+This means that even if the option is enabled, it will not be active outside
+the primary-phase build, here named "PPL".
+
+Internally, phases are implemented simply by creating new entries. These
+appear in the Kconfig as per normal. It would be possible for a Kconfig
+editor to show the entries just for a particular phase, leaving out the
+entries not applicable to that phase.
+
+When phases are used, the Kconfig tool outputs separate auto.conf files for
+each phase (e.g. auto_spl.conf), so that if SPL_FOO is enabled, then
+`CONFIG_FOO=y` is present in the file. This makes it easy for the build system
+to build the correct code, use IS_ENABLED(), etc.
+
+To ensure that the correct options are enabled for each build, in addition to
+the normal CONFIG_FOO option in the file, phase symbols are added too. For
+example, if FOO is enabled in the SPL phase, then auto_spl.conf contains::
+
+    CONFIG_FOO=y
+    CONFIG_SPL_FOO=y
+
+The phase-specific line (CONFIG_SPL_FOO) is seldom needed, but it allows one
+phase to access the symbols from another phase. For example, if the primary
+phase needs to receive boot timings from SPL, then support for boot timings must
+be added in both phases. If the timings are at a fixed address, this can be in a
+shared symbol (like CONFIG_SPL_TIMING_BASE) that both phases can access.
+
+Technical note: the grammar definition of <symbol> in this documeent does not
+include the "%" prefix at present. It can be used with any attribute. It cannot
+be used with any top-level items, like "config", "menuconfig", "if" and "menu".
+
 
 Kconfig syntax
 --------------
@@ -744,3 +875,6 @@ https://kernelnewbies.org/KernelProjects/kconfig-sat
 .. [9] https://www4.cs.fau.de/Publications/2011/tartler_11_eurosys.pdf
 .. [10] https://paulgazzillo.com/papers/esecfse21.pdf
 .. [11] https://github.com/paulgazz/kmax
+
+.. [12] https://u-boot.readthedocs.io/en/latest/develop/spl.html
+.. [13] https://docs.zephyrproject.org/latest/build/sysbuild/index.html
-- 
2.40.0.rc1.284.g88254d51c5-goog



