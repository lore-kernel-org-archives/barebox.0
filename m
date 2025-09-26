Delivery-date: Fri, 26 Sep 2025 11:11:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v24Tl-001H3N-3A
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 11:11:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v24Tl-0002nN-0c
	for lore@pengutronix.de; Fri, 26 Sep 2025 11:11:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pTcy/iIUy0IRNY2EcUbNR7BCAeZjrrZKBnrhFbeyvPM=; b=2NyWsJ2F8znfzw/A73EQs9dn6O
	Lo8ArDXEa6g1wT69+M30e0uSIqTW0DTNqtMT+TvvRmUm3maBOVAiGbRlv2i+saOYW54gkCZ1LJzNI
	dZV8i1Zmfmta9nB1eP9g97ARDElAIulCUDUpqFFIq/Hk3UslRe/Cl8pVnLi+sj8AkY4RgFAQOTabC
	SLAawarrnFbqbXsDXcadHlk2zVJZTAch3M1HGfIDO3XL5RGqSpvjRowCJ++YNaaDtAdgweMf1ZLCJ
	0elFHrYSCd8uhaEOZ+ozVIptdYPVvOMK46vkVdYIDCin0EqXEvWqxn05fwajqhl0+LvV4tQQC5NeU
	8yQ0aVhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v24TJ-0000000HRWw-2eQf;
	Fri, 26 Sep 2025 09:10:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v24TG-0000000HRUI-2Qem
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 09:10:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v24TE-0002eA-T3; Fri, 26 Sep 2025 11:10:28 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v24TE-000ZFI-2I;
	Fri, 26 Sep 2025 11:10:28 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v24TE-00000004IdF-2aIq;
	Fri, 26 Sep 2025 11:10:28 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 26 Sep 2025 11:10:03 +0200
Message-ID: <20250926091027.1024322-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_021030_765986_69B2750B 
X-CRM114-Status: GOOD (  11.44  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] common: misc: reduce duplication in strerror
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We duplicate the fallback behavior and use an unnecessary intermediate
str variable, when we could return directly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch (missing prerequisite)
---
 common/misc.c | 139 ++++++++++++++++++++++++--------------------------
 1 file changed, 66 insertions(+), 73 deletions(-)

diff --git a/common/misc.c b/common/misc.c
index 67f88af1a3df..2ee6fdd7d612 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -26,86 +26,79 @@ const char *strerror(int errnum)
 {
 	static char errno_string[sizeof("error -2147483648")];
 
-#ifdef CONFIG_ERRNO_MESSAGES
-	char *str;
 	switch(errnum) {
-	case	0		: str = "No error"; break;
-	case	EPERM		: str = "Operation not permitted"; break;
-	case	ENOENT		: str = "No such file or directory"; break;
-	case	EIO		: str = "I/O error"; break;
-	case	ENXIO		: str = "No such device or address"; break;
-	case	E2BIG		: str = "Arg list too long"; break;
-	case	ENOEXEC		: str = "Exec format error"; break;
-	case	EBADF		: str = "Bad file number"; break;
-	case	ENOMEM		: str = "Out of memory"; break;
-	case	EACCES		: str = "Permission denied"; break;
-	case	EFAULT		: str = "Bad address"; break;
-	case	EBUSY		: str = "Device or resource busy"; break;
-	case	EEXIST		: str = "File exists"; break;
-	case	ENODEV		: str = "No such device"; break;
-	case	ENOTDIR		: str = "Not a directory"; break;
-	case	EISDIR		: str = "Is a directory"; break;
-	case	EINVAL		: str = "Invalid argument"; break;
-	case	ENOSPC		: str = "No space left on device"; break;
-	case	ESPIPE		: str = "Illegal seek"; break;
-	case	EROFS		: str = "Read-only file system"; break;
-	case	ENAMETOOLONG	: str = "File name too long"; break;
-	case	ENOSYS		: str = "Function not implemented"; break;
-	case	ENOTEMPTY	: str = "Directory not empty"; break;
-	case	EHOSTUNREACH	: str = "No route to host"; break;
-	case	EINTR		: str = "Interrupted system call"; break;
-	case	ENETUNREACH	: str = "Network is unreachable"; break;
-	case	ENETDOWN	: str = "Network is down"; break;
-	case	ETIMEDOUT	: str = "Connection timed out"; break;
-	case	EPROBE_DEFER	: str = "Requested probe deferral"; break;
-	case	ELOOP		: str = "Too many symbolic links encountered"; break;
-	case	ENODATA		: str = "No data available"; break;
-	case	EOPNOTSUPP	: str = "Operation not supported"; break;
+#ifdef CONFIG_ERRNO_MESSAGES
+	case	0		: return "No error";
+	case	EPERM		: return "Operation not permitted";
+	case	ENOENT		: return "No such file or directory";
+	case	EIO		: return "I/O error";
+	case	ENXIO		: return "No such device or address";
+	case	E2BIG		: return "Arg list too long";
+	case	ENOEXEC		: return "Exec format error";
+	case	EBADF		: return "Bad file number";
+	case	ENOMEM		: return "Out of memory";
+	case	EACCES		: return "Permission denied";
+	case	EFAULT		: return "Bad address";
+	case	EBUSY		: return "Device or resource busy";
+	case	EEXIST		: return "File exists";
+	case	ENODEV		: return "No such device";
+	case	ENOTDIR		: return "Not a directory";
+	case	EISDIR		: return "Is a directory";
+	case	EINVAL		: return "Invalid argument";
+	case	ENOSPC		: return "No space left on device";
+	case	ESPIPE		: return "Illegal seek";
+	case	EROFS		: return "Read-only file system";
+	case	ENAMETOOLONG	: return "File name too long";
+	case	ENOSYS		: return "Function not implemented";
+	case	ENOTEMPTY	: return "Directory not empty";
+	case	EHOSTUNREACH	: return "No route to host";
+	case	EINTR		: return "Interrupted system call";
+	case	ENETUNREACH	: return "Network is unreachable";
+	case	ENETDOWN	: return "Network is down";
+	case	ETIMEDOUT	: return "Connection timed out";
+	case	EPROBE_DEFER	: return "Requested probe deferral";
+	case	ELOOP		: return "Too many symbolic links encountered";
+	case	ENODATA		: return "No data available";
+	case	EOPNOTSUPP	: return "Operation not supported";
 #if 0 /* These are probably not needed */
-	case	ENOTBLK		: str = "Block device required"; break;
-	case	EFBIG		: str = "File too large"; break;
-	case	EBADSLT		: str = "Invalid slot"; break;
-	case	ETIME		: str = "Timer expired"; break;
-	case	ENONET		: str = "Machine is not on the network"; break;
-	case	EADV		: str = "Advertise error"; break;
-	case	ECOMM		: str = "Communication error on send"; break;
-	case	EPROTO		: str = "Protocol error"; break;
-	case	EBADMSG		: str = "Not a data message"; break;
-	case	EOVERFLOW	: str = "Value too large for defined data type"; break;
-	case	EBADFD		: str = "File descriptor in bad state"; break;
-	case	EREMCHG		: str = "Remote address changed"; break;
-	case	EMSGSIZE	: str = "Message too long"; break;
-	case	EPROTOTYPE	: str = "Protocol wrong type for socket"; break;
-	case	ENOPROTOOPT	: str = "Protocol not available"; break;
-	case	EPROTONOSUPPORT	: str = "Protocol not supported"; break;
-	case	ESOCKTNOSUPPORT	: str = "Socket type not supported"; break;
-	case	EPFNOSUPPORT	: str = "Protocol family not supported"; break;
-	case	EAFNOSUPPORT	: str = "Address family not supported by protocol"; break;
-	case	EADDRINUSE	: str = "Address already in use"; break;
-	case	EADDRNOTAVAIL	: str = "Cannot assign requested address"; break;
-	case	ENETRESET	: str = "Network dropped connection because of reset"; break;
-	case	ECONNABORTED	: str = "Software caused connection abort"; break;
-	case	ECONNRESET	: str = "Connection reset by peer"; break;
-	case	ENOBUFS		: str = "No buffer space available"; break;
-	case	ECONNREFUSED	: str = "Connection refused"; break;
-	case	EHOSTDOWN	: str = "Host is down"; break;
-	case	EALREADY	: str = "Operation already in progress"; break;
-	case	EINPROGRESS	: str = "Operation now in progress"; break;
-	case	ESTALE		: str = "Stale NFS file handle"; break;
-	case	EISNAM		: str = "Is a named type file"; break;
-	case	EREMOTEIO	: str = "Remote I/O error"; break;
+	case	ENOTBLK		: return "Block device required";
+	case	EFBIG		: return "File too large";
+	case	EBADSLT		: return "Invalid slot";
+	case	ETIME		: return "Timer expired";
+	case	ENONET		: return "Machine is not on the network";
+	case	EADV		: return "Advertise error";
+	case	ECOMM		: return "Communication error on send";
+	case	EPROTO		: return "Protocol error";
+	case	EBADMSG		: return "Not a data message";
+	case	EOVERFLOW	: return "Value too large for defined data type";
+	case	EBADFD		: return "File descriptor in bad state";
+	case	EREMCHG		: return "Remote address changed";
+	case	EMSGSIZE	: return "Message too long";
+	case	EPROTOTYPE	: return "Protocol wrong type for socket";
+	case	ENOPROTOOPT	: return "Protocol not available";
+	case	EPROTONOSUPPORT	: return "Protocol not supported";
+	case	ESOCKTNOSUPPORT	: return "Socket type not supported";
+	case	EPFNOSUPPORT	: return "Protocol family not supported";
+	case	EAFNOSUPPORT	: return "Address family not supported by protocol";
+	case	EADDRINUSE	: return "Address already in use";
+	case	EADDRNOTAVAIL	: return "Cannot assign requested address";
+	case	ENETRESET	: return "Network dropped connection because of reset";
+	case	ECONNABORTED	: return "Software caused connection abort";
+	case	ECONNRESET	: return "Connection reset by peer";
+	case	ENOBUFS		: return "No buffer space available";
+	case	ECONNREFUSED	: return "Connection refused";
+	case	EHOSTDOWN	: return "Host is down";
+	case	EALREADY	: return "Operation already in progress";
+	case	EINPROGRESS	: return "Operation now in progress";
+	case	ESTALE		: return "Stale NFS file handle";
+	case	EISNAM		: return "Is a named type file";
+	case	EREMOTEIO	: return "Remote I/O error";
+#endif
 #endif
 	default:
 		sprintf(errno_string, "error %d", errnum);
 		return errno_string;
 	};
-
-        return str;
-#else
-	sprintf(errno_string, "error %d", errnum);
-
-	return errno_string;
-#endif
 }
 EXPORT_SYMBOL(strerror);
 
-- 
2.47.3



