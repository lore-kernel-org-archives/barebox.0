Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OKTcP-00034v-AF
	for barebox@lists.infradead.org; Fri, 04 Jun 2010 09:55:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Jun 2010 11:55:03 +0200
Message-Id: <1275645309-9756-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
References: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 07/13] implement nfs using new network stack
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/nfs.c |  716 +++++++++++++++++++++++++++++-------------------------------
 1 files changed, 346 insertions(+), 370 deletions(-)

diff --git a/net/nfs.c b/net/nfs.c
index 15f91ab..51df7a3 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -32,28 +32,111 @@
 #include <libgen.h>
 #include <fcntl.h>
 #include <errno.h>
-#include "nfs.h"
-
-/*#define NFS_DEBUG*/
+#include <linux/err.h>
+
+#define SUNRPC_PORT     111
+
+#define PROG_PORTMAP    100000
+#define PROG_NFS        100003
+#define PROG_MOUNT      100005
+
+#define MSG_CALL        0
+#define MSG_REPLY       1
+
+#define PORTMAP_GETPORT 3
+
+#define MOUNT_ADDENTRY  1
+#define MOUNT_UMOUNTALL 4
+
+#define NFS_LOOKUP      4
+#define NFS_READLINK    5
+#define NFS_READ        6
+
+#define NFS_FHSIZE      32
+
+enum nfs_stat {
+	NFS_OK		= 0,
+	NFSERR_PERM	= 1,
+	NFSERR_NOENT	= 2,
+	NFSERR_IO	= 5,
+	NFSERR_NXIO	= 6,
+	NFSERR_ACCES	= 13,
+	NFSERR_EXIST	= 17,
+	NFSERR_NODEV	= 19,
+	NFSERR_NOTDIR	= 20,
+	NFSERR_ISDIR	= 21,
+	NFSERR_FBIG	= 27,
+	NFSERR_NOSPC	= 28,
+	NFSERR_ROFS	= 30,
+	NFSERR_NAMETOOLONG=63,
+	NFSERR_NOTEMPTY	= 66,
+	NFSERR_DQUOT	= 69,
+	NFSERR_STALE	= 70,
+	NFSERR_WFLUSH	= 99,
+};
+
+/* Block size used for NFS read accesses.  A RPC reply packet (including  all
+ * headers) must fit within a single Ethernet frame to avoid fragmentation.
+ * Chosen to be a power of two, as most NFS servers are optimized for this.  */
+#define NFS_READ_SIZE   1024
+
+struct rpc_call {
+	uint32_t id;
+	uint32_t type;
+	uint32_t rpcvers;
+	uint32_t prog;
+	uint32_t vers;
+	uint32_t proc;
+	uint32_t data[0];
+};
+
+struct rpc_reply {
+	uint32_t id;
+	uint32_t type;
+	uint32_t rstatus;
+	uint32_t verifier;
+	uint32_t v2;
+	uint32_t astatus;
+	uint32_t data[0];
+};
+
+struct rpc_t {
+	union {
+		struct {
+			uint32_t id;
+			uint32_t type;
+			uint32_t rpcvers;
+			uint32_t prog;
+			uint32_t vers;
+			uint32_t proc;
+			uint32_t data[1];
+		} call;
+		struct {
+			uint32_t id;
+			uint32_t type;
+			uint32_t rstatus;
+			uint32_t verifier;
+			uint32_t v2;
+			uint32_t astatus;
+			uint32_t data[19];
+		} reply;
+	} u;
+};
 
 #define HASHES_PER_LINE 65	/* Number of "loading" hashes per line	*/
 #define NFS_TIMEOUT 60
 
-static int fs_mounted = 0;
 static unsigned long rpc_id = 0;
 static int nfs_offset = -1;
-static int nfs_len;
+static uint64_t nfs_timer_start;
+static int nfs_err;
 
 static char dirfh[NFS_FHSIZE];	/* file handle of directory */
 static char filefh[NFS_FHSIZE]; /* file handle of kernel image */
 
-static int	NfsDownloadState;
-static IPaddr_t NfsServerIP;
-static int	NfsSrvMountPort;
-static int	NfsSrvNfsPort;
-static int	NfsOurPort;
-static int	NfsTimeoutCount;
-static int	NfsState;
+static int	nfs_server_mount_port;
+static int	nfs_server_nfs_port;
+static int	nfs_state;
 #define STATE_PRCLOOKUP_PROG_MOUNT_REQ	1
 #define STATE_PRCLOOKUP_PROG_NFS_REQ	2
 #define STATE_MOUNT_REQ			3
@@ -61,40 +144,22 @@ static int	NfsState;
 #define STATE_LOOKUP_REQ		5
 #define STATE_READ_REQ			6
 #define STATE_READLINK_REQ		7
+#define STATE_DONE			8
 
 static char *nfs_filename;
 static char *nfs_path;
 static char nfs_path_buff[2048];
 
 static int net_store_fd;
-
-static __inline__ int
-store_block (uchar * src, unsigned offset, unsigned len)
-{
-	ulong newsize = offset + len;
-	int ret;
-
-	ret = write(net_store_fd, src, len);
-	if (ret < 0)
-		return ret;
-
-	if (NetBootFileXferSize < (offset+len))
-		NetBootFileXferSize = newsize;
-
-	return 0;
-}
+static struct net_connection *nfs_con;
 
 /**************************************************************************
 RPC_ADD_CREDENTIALS - Add RPC authentication/verifier entries
 **************************************************************************/
-static long *rpc_add_credentials (long *p)
+static uint32_t *rpc_add_credentials(uint32_t *p)
 {
 	int hl;
-	int hostnamelen;
-	char hostname[256];
-
-	strcpy (hostname, "");
-	hostnamelen=strlen (hostname);
+	int hostnamelen = 0;
 
 	/* Here's the executive summary on authentication requirements of the
 	 * various NFS server implementations:	Linux accepts both AUTH_NONE
@@ -112,10 +177,12 @@ static long *rpc_add_credentials (long *p)
 	*p++ = htonl(hl+20);		/* auth length */
 	*p++ = htonl(0);		/* stamp */
 	*p++ = htonl(hostnamelen);	/* hostname string */
-	if (hostnamelen & 3) {
+
+	if (hostnamelen & 3)
 		*(p + hostnamelen / 4) = 0; /* add zero padding */
-	}
-	memcpy (p, hostname, hostnamelen);
+
+	/* memcpy(p, hostname, hostnamelen); */ /* empty hostname */
+
 	p += hl / 4;
 	*p++ = 0;			/* uid */
 	*p++ = 0;			/* gid */
@@ -131,46 +198,42 @@ static long *rpc_add_credentials (long *p)
 /**************************************************************************
 RPC_LOOKUP - Lookup RPC Port numbers
 **************************************************************************/
-static void
-rpc_req (int rpc_prog, int rpc_proc, uint32_t *data, int datalen)
+static int rpc_req(int rpc_prog, int rpc_proc, uint32_t *data, int datalen)
 {
-	struct rpc_t pkt;
+	struct rpc_call pkt;
 	unsigned long id;
-	uint32_t *p;
-	int pktlen;
 	int sport;
+	int ret;
+	unsigned char *payload = net_udp_get_payload(nfs_con);
 
 	id = ++rpc_id;
-	pkt.u.call.id = htonl(id);
-	pkt.u.call.type = htonl(MSG_CALL);
-	pkt.u.call.rpcvers = htonl(2);	/* use RPC version 2 */
-	pkt.u.call.prog = htonl(rpc_prog);
-	pkt.u.call.vers = htonl(2);	/* portmapper is version 2 */
-	pkt.u.call.proc = htonl(rpc_proc);
-	p = (uint32_t *)&(pkt.u.call.data);
-
-	if (datalen)
-		memcpy ((char *)p, (char *)data, datalen*sizeof(uint32_t));
-
-	pktlen = (char *)p + datalen*sizeof(uint32_t) - (char *)&pkt;
+	pkt.id = htonl(id);
+	pkt.type = htonl(MSG_CALL);
+	pkt.rpcvers = htonl(2);	/* use RPC version 2 */
+	pkt.prog = htonl(rpc_prog);
+	pkt.vers = htonl(2);	/* portmapper is version 2 */
+	pkt.proc = htonl(rpc_proc);
 
-	memcpy ((char *)NetTxPacket + NetEthHdrSize() + IP_HDR_SIZE, (char *)&pkt, pktlen);
+	memcpy(payload, &pkt, sizeof(pkt));
+	memcpy(payload + sizeof(pkt), data, datalen * sizeof(uint32_t));
 
 	if (rpc_prog == PROG_PORTMAP)
 		sport = SUNRPC_PORT;
 	else if (rpc_prog == PROG_MOUNT)
-		sport = NfsSrvMountPort;
+		sport = nfs_server_mount_port;
 	else
-		sport = NfsSrvNfsPort;
+		sport = nfs_server_nfs_port;
 
-	NetSendUDPPacket (NetServerEther, NfsServerIP, sport, NfsOurPort, pktlen);
+	nfs_con->udp->uh_dport = htons(sport);
+	ret = net_udp_send(nfs_con, sizeof(pkt) + datalen * sizeof(uint32_t));
+
+	return ret;
 }
 
 /**************************************************************************
 RPC_LOOKUP - Lookup RPC Port numbers
 **************************************************************************/
-static void
-rpc_lookup_req (int prog, int ver)
+static void rpc_lookup_req(int prog, int ver)
 {
 	uint32_t data[16];
 
@@ -181,14 +244,13 @@ rpc_lookup_req (int prog, int ver)
 	data[6] = htonl(17);	/* IP_UDP */
 	data[7] = 0;
 
-	rpc_req (PROG_PORTMAP, PORTMAP_GETPORT, data, 8);
+	rpc_req(PROG_PORTMAP, PORTMAP_GETPORT, data, 8);
 }
 
 /**************************************************************************
 NFS_MOUNT - Mount an NFS Filesystem
 **************************************************************************/
-static void
-nfs_mount_req (char *path)
+static void nfs_mount_req(char *path)
 {
 	uint32_t data[1024];
 	uint32_t *p;
@@ -198,39 +260,38 @@ nfs_mount_req (char *path)
 	pathlen = strlen (path);
 
 	p = &(data[0]);
-	p = (uint32_t *)rpc_add_credentials((long *)p);
+	p = rpc_add_credentials(p);
 
 	*p++ = htonl(pathlen);
-	if (pathlen & 3) *(p + pathlen / 4) = 0;
+	if (pathlen & 3)
+		*(p + pathlen / 4) = 0;
 	memcpy (p, path, pathlen);
 	p += (pathlen + 3) / 4;
 
-	len = (uint32_t *)p - (uint32_t *)&(data[0]);
+	len = p - &(data[0]);
 
-	rpc_req (PROG_MOUNT, MOUNT_ADDENTRY, data, len);
+	rpc_req(PROG_MOUNT, MOUNT_ADDENTRY, data, len);
 }
 
 /**************************************************************************
 NFS_UMOUNTALL - Unmount all our NFS Filesystems on the Server
 **************************************************************************/
-static void
-nfs_umountall_req (void)
+static void nfs_umountall_req(void)
 {
 	uint32_t data[1024];
 	uint32_t *p;
 	int len;
 
-	if ((NfsSrvMountPort == -1) || (!fs_mounted)) {
+	if (nfs_server_mount_port < 0)
 		/* Nothing mounted, nothing to umount */
 		return;
-	}
 
 	p = &(data[0]);
-	p = (uint32_t *)rpc_add_credentials ((long *)p);
+	p = rpc_add_credentials(p);
 
-	len = (uint32_t *)p - (uint32_t *)&(data[0]);
+	len = p - &(data[0]);
 
-	rpc_req (PROG_MOUNT, MOUNT_UMOUNTALL, data, len);
+	rpc_req(PROG_MOUNT, MOUNT_UMOUNTALL, data, len);
 }
 
 /***************************************************************************
@@ -240,29 +301,27 @@ nfs_umountall_req (void)
  * In case of successful readlink(), the dirname is manipulated,
  * so that inside the nfs() function a recursion can be done.
  **************************************************************************/
-static void
-nfs_readlink_req (void)
+static void nfs_readlink_req(void)
 {
 	uint32_t data[1024];
 	uint32_t *p;
 	int len;
 
 	p = &(data[0]);
-	p = (uint32_t *)rpc_add_credentials ((long *)p);
+	p = rpc_add_credentials(p);
 
 	memcpy (p, filefh, NFS_FHSIZE);
 	p += (NFS_FHSIZE / 4);
 
-	len = (uint32_t *)p - (uint32_t *)&(data[0]);
+	len = p - &(data[0]);
 
-	rpc_req (PROG_NFS, NFS_READLINK, data, len);
+	rpc_req(PROG_NFS, NFS_READLINK, data, len);
 }
 
 /**************************************************************************
 NFS_LOOKUP - Lookup Pathname
 **************************************************************************/
-static void
-nfs_lookup_req (char *fname)
+static void nfs_lookup_req(char *fname)
 {
 	uint32_t data[1024];
 	uint32_t *p;
@@ -272,32 +331,32 @@ nfs_lookup_req (char *fname)
 	fnamelen = strlen (fname);
 
 	p = &(data[0]);
-	p = (uint32_t *)rpc_add_credentials ((long *)p);
+	p = rpc_add_credentials(p);
 
 	memcpy (p, dirfh, NFS_FHSIZE);
 	p += (NFS_FHSIZE / 4);
 	*p++ = htonl(fnamelen);
-	if (fnamelen & 3) *(p + fnamelen / 4) = 0;
+	if (fnamelen & 3)
+		*(p + fnamelen / 4) = 0;
 	memcpy (p, fname, fnamelen);
 	p += (fnamelen + 3) / 4;
 
-	len = (uint32_t *)p - (uint32_t *)&(data[0]);
+	len = p - &(data[0]);
 
-	rpc_req (PROG_NFS, NFS_LOOKUP, data, len);
+	rpc_req(PROG_NFS, NFS_LOOKUP, data, len);
 }
 
 /**************************************************************************
 NFS_READ - Read File on NFS Server
 **************************************************************************/
-static void
-nfs_read_req (int offset, int readlen)
+static void nfs_read_req(int offset, int readlen)
 {
 	uint32_t data[1024];
 	uint32_t *p;
 	int len;
 
 	p = &(data[0]);
-	p = (uint32_t *)rpc_add_credentials ((long *)p);
+	p = rpc_add_credentials(p);
 
 	memcpy (p, filefh, NFS_FHSIZE);
 	p += (NFS_FHSIZE / 4);
@@ -305,238 +364,194 @@ nfs_read_req (int offset, int readlen)
 	*p++ = htonl(readlen);
 	*p++ = 0;
 
-	len = (uint32_t *)p - (uint32_t *)&(data[0]);
+	len = p - &(data[0]);
 
-	rpc_req (PROG_NFS, NFS_READ, data, len);
+	rpc_req(PROG_NFS, NFS_READ, data, len);
 }
 
 /**************************************************************************
 RPC request dispatcher
 **************************************************************************/
-
-static void
-NfsSend (void)
+static void nfs_send(void)
 {
-#ifdef NFS_DEBUG
-	printf ("%s\n", __FUNCTION__);
-#endif
+	debug("%s\n", __func__);
 
-	switch (NfsState) {
+	switch (nfs_state) {
 	case STATE_PRCLOOKUP_PROG_MOUNT_REQ:
-		rpc_lookup_req (PROG_MOUNT, 1);
+		rpc_lookup_req(PROG_MOUNT, 1);
 		break;
 	case STATE_PRCLOOKUP_PROG_NFS_REQ:
-		rpc_lookup_req (PROG_NFS, 2);
+		rpc_lookup_req(PROG_NFS, 2);
 		break;
 	case STATE_MOUNT_REQ:
-		nfs_mount_req (nfs_path);
+		nfs_mount_req(nfs_path);
 		break;
 	case STATE_UMOUNT_REQ:
-		nfs_umountall_req ();
+		nfs_umountall_req();
 		break;
 	case STATE_LOOKUP_REQ:
-		nfs_lookup_req (nfs_filename);
+		nfs_lookup_req(nfs_filename);
 		break;
 	case STATE_READ_REQ:
-		nfs_read_req (nfs_offset, nfs_len);
+		nfs_read_req(nfs_offset, NFS_READ_SIZE);
 		break;
 	case STATE_READLINK_REQ:
-		nfs_readlink_req ();
+		nfs_readlink_req();
 		break;
 	}
 }
 
-/**************************************************************************
-Handlers for the reply from server
-**************************************************************************/
-
-static int
-rpc_lookup_reply (int prog, uchar *pkt, unsigned len)
+static int rpc_check_reply(unsigned char *pkt, int isnfs)
 {
-	struct rpc_t rpc_pkt;
-
-	memcpy ((unsigned char *)&rpc_pkt, pkt, len);
+	uint32_t *data;
+	int nfserr;
+	struct rpc_reply rpc;
 
-#ifdef NFS_DEBUG
-	printf ("%s\n", __FUNCTION__);
-#endif
+	memcpy(&rpc, pkt, sizeof(rpc));
 
-	if (ntohl(rpc_pkt.u.reply.id) != rpc_id)
-		return -1;
+	if (ntohl(rpc.id) != rpc_id)
+		return -EINVAL;
 
-	if (rpc_pkt.u.reply.rstatus  ||
-	    rpc_pkt.u.reply.verifier ||
-	    rpc_pkt.u.reply.astatus  ||
-	    rpc_pkt.u.reply.astatus) {
-		return -1;
+	if (rpc.rstatus  ||
+	    rpc.verifier ||
+	    rpc.astatus ) {
+		return -EINVAL;
 	}
 
+	if (!isnfs)
+		return 0;
+
+	data = (uint32_t *)(pkt + sizeof(struct rpc_reply));
+	nfserr = ntohl(net_read_uint32(data));
+
+	debug("%s: state: %d, err %d\n", __func__, nfs_state, -nfserr);
+
+	if (nfserr <= 30)
+		/* These nfs codes correspond with those in errno.h */
+		return -nfserr;
+	if (nfserr == NFSERR_STALE)
+		return -ESTALE;
+
+	return -EINVAL;
+}
+
+static int rpc_lookup_reply(int prog, unsigned char *pkt, unsigned len)
+{
+	uint32_t port;
+	int ret;
+
+	ret = rpc_check_reply(pkt, 0);
+	if (ret)
+		return ret;
+
+	port = net_read_uint32((uint32_t *)(pkt + sizeof(struct rpc_reply)));
 	switch (prog) {
 	case PROG_MOUNT:
-		NfsSrvMountPort = ntohl(rpc_pkt.u.reply.data[0]);
+		nfs_server_mount_port = ntohl(port);
 		break;
 	case PROG_NFS:
-		NfsSrvNfsPort = ntohl(rpc_pkt.u.reply.data[0]);
+		nfs_server_nfs_port = ntohl(port);
 		break;
 	}
 
 	return 0;
 }
 
-static int
-nfs_mount_reply (uchar *pkt, unsigned len)
+static int nfs_mount_reply(unsigned char *pkt, unsigned len)
 {
-	struct rpc_t rpc_pkt;
-
-#ifdef NFS_DEBUG
-	printf ("%s\n", __FUNCTION__);
-#endif
-
-	memcpy ((unsigned char *)&rpc_pkt, pkt, len);
-
-	if (ntohl(rpc_pkt.u.reply.id) != rpc_id)
-		return -1;
+	int ret;
 
-	if (rpc_pkt.u.reply.rstatus  ||
-	    rpc_pkt.u.reply.verifier ||
-	    rpc_pkt.u.reply.astatus  ||
-	    rpc_pkt.u.reply.data[0]) {
-		return -1;
-	}
+	ret = rpc_check_reply(pkt, 1);
+	if (ret)
+		return ret;
 
-	fs_mounted = 1;
-	memcpy (dirfh, rpc_pkt.u.reply.data + 1, NFS_FHSIZE);
+	memcpy(dirfh, pkt + sizeof(struct rpc_reply) + 4, NFS_FHSIZE);
 
 	return 0;
 }
 
-static int
-nfs_umountall_reply (uchar *pkt, unsigned len)
+static int nfs_umountall_reply(unsigned char *pkt, unsigned len)
 {
-	struct rpc_t rpc_pkt;
-
-#ifdef NFS_DEBUG
-	printf ("%s\n", __FUNCTION__);
-#endif
-
-	memcpy ((unsigned char *)&rpc_pkt, pkt, len);
-
-	if (ntohl(rpc_pkt.u.reply.id) != rpc_id)
-		return -1;
+	int ret;
 
-	if (rpc_pkt.u.reply.rstatus  ||
-	    rpc_pkt.u.reply.verifier ||
-	    rpc_pkt.u.reply.astatus) {
-		return -1;
-	}
+	ret = rpc_check_reply(pkt, 0);
+	if (ret)
+		return ret;
 
-	fs_mounted = 0;
-	memset (dirfh, 0, sizeof(dirfh));
+	memset(dirfh, 0, sizeof(dirfh));
 
 	return 0;
 }
 
-static int
-nfs_lookup_reply (uchar *pkt, unsigned len)
+static int nfs_lookup_reply(unsigned char *pkt, unsigned len)
 {
-	struct rpc_t rpc_pkt;
-
-#ifdef NFS_DEBUG
-	printf ("%s\n", __FUNCTION__);
-#endif
-
-	memcpy ((unsigned char *)&rpc_pkt, pkt, len);
-
-	if (ntohl(rpc_pkt.u.reply.id) != rpc_id)
-		return -1;
+	int ret;
 
-	if (rpc_pkt.u.reply.rstatus  ||
-	    rpc_pkt.u.reply.verifier ||
-	    rpc_pkt.u.reply.astatus  ||
-	    rpc_pkt.u.reply.data[0]) {
-		return -1;
-	}
+	ret = rpc_check_reply(pkt, 1);
+	if (ret)
+		return ret;
 
-	memcpy (filefh, rpc_pkt.u.reply.data + 1, NFS_FHSIZE);
+	memcpy(filefh, pkt + sizeof(struct rpc_reply) + 4, NFS_FHSIZE);
 
 	return 0;
 }
 
-static int
-nfs_readlink_reply (uchar *pkt, unsigned len)
+static int nfs_readlink_reply(unsigned char *pkt, unsigned len)
 {
-	struct rpc_t rpc_pkt;
+	uint32_t *data;
+	char *path;
 	int rlen;
+	int ret;
 
-#ifdef NFS_DEBUG
-	printf ("%s\n", __FUNCTION__);
-#endif
+	ret = rpc_check_reply(pkt, 1);
+	if (ret)
+		return ret;
 
-	memcpy ((unsigned char *)&rpc_pkt, pkt, len);
+	data = (uint32_t *)(pkt + sizeof(struct rpc_reply));
 
-	if (ntohl(rpc_pkt.u.reply.id) != rpc_id)
-		return -1;
+	data++;
 
-	if (rpc_pkt.u.reply.rstatus  ||
-	    rpc_pkt.u.reply.verifier ||
-	    rpc_pkt.u.reply.astatus  ||
-	    rpc_pkt.u.reply.data[0]) {
-		return -1;
-	}
+	rlen = ntohl(net_read_uint32(data)); /* new path length */
 
-	rlen = ntohl (rpc_pkt.u.reply.data[1]); /* new path length */
+	data++;
+	path = (char *)data;
 
-	if (*((char *)&(rpc_pkt.u.reply.data[2])) != '/') {
-		int pathlen;
-		strcat (nfs_path, "/");
-		pathlen = strlen(nfs_path);
-		memcpy (nfs_path+pathlen, (uchar *)&(rpc_pkt.u.reply.data[2]), rlen);
-		nfs_path[pathlen+rlen+1] = 0;
+	if (*path != '/') {
+		strcat(nfs_path, "/");
+		strncat(nfs_path, path, rlen);
 	} else {
-		memcpy (nfs_path, (uchar *)&(rpc_pkt.u.reply.data[2]), rlen);
+		memcpy(nfs_path, path, rlen);
 		nfs_path[rlen] = 0;
 	}
 	return 0;
 }
 
-static int
-nfs_read_reply (uchar *pkt, unsigned len)
+static int nfs_read_reply(unsigned char *pkt, unsigned len)
 {
-	struct rpc_t rpc_pkt;
 	int rlen;
+	uint32_t *data;
+	int ret;
 
-#ifdef NFS_DEBUG_nop
-	printf ("%s\n", __FUNCTION__);
-#endif
-
-	memcpy ((uchar *)&rpc_pkt, pkt, sizeof(rpc_pkt.u.reply));
+	debug("%s\n", __func__);
 
-	if (ntohl(rpc_pkt.u.reply.id) != rpc_id)
-		return -1;
+	ret = rpc_check_reply(pkt, 1);
+	if (ret)
+		return ret;
 
-	if (rpc_pkt.u.reply.rstatus  ||
-	    rpc_pkt.u.reply.verifier ||
-	    rpc_pkt.u.reply.astatus  ||
-	    rpc_pkt.u.reply.data[0]) {
-		if (rpc_pkt.u.reply.rstatus) {
-			return -9999;
-		}
-		if (rpc_pkt.u.reply.astatus) {
-			return -9999;
-		}
-		return -ntohl(rpc_pkt.u.reply.data[0]);;
-	}
+	data = (uint32_t *)(pkt + sizeof(struct rpc_reply));
 
-	if ((nfs_offset!=0) && !((nfs_offset) % (NFS_READ_SIZE/2*10*HASHES_PER_LINE))) {
+	if (nfs_offset && !((nfs_offset) % (NFS_READ_SIZE / 2 * 10 * HASHES_PER_LINE)))
 		puts ("\n\t ");
-	}
-	if (!(nfs_offset % ((NFS_READ_SIZE/2)*10))) {
+	if (!(nfs_offset % ((NFS_READ_SIZE / 2) * 10)))
 		putchar ('#');
-	}
 
-	rlen = ntohl(rpc_pkt.u.reply.data[18]);
-	if ( store_block ((uchar *)pkt+sizeof(rpc_pkt.u.reply), nfs_offset, rlen) )
-		return -9999;
+	rlen = ntohl(net_read_uint32(data + 18));
+
+	ret = write(net_store_fd, (char *)(data + 19), rlen);
+	if (ret < 0) {
+		perror("write");
+		return ret;
+	}
 
 	return rlen;
 }
@@ -545,170 +560,116 @@ nfs_read_reply (uchar *pkt, unsigned len)
 Interfaces of barebox
 **************************************************************************/
 
-static void
-NfsTimeout (void)
+static void nfs_handler(char *packet, unsigned len)
 {
-	puts ("Timeout\n");
-	NetState = NETLOOP_FAIL;
-	return;
-}
-
-static void
-NfsHandler (uchar *pkt, unsigned dest, unsigned src, unsigned len)
-{
-	int rlen;
-
-#ifdef NFS_DEBUG
-	printf ("%s\n", __FUNCTION__);
-#endif
+	char *pkt = net_eth_to_udp_payload(packet);
+	int ret;
 
-	if (dest != NfsOurPort) return;
+	debug("%s\n", __func__);
 
-	switch (NfsState) {
+	switch (nfs_state) {
 	case STATE_PRCLOOKUP_PROG_MOUNT_REQ:
-		rpc_lookup_reply (PROG_MOUNT, pkt, len);
-		NfsState = STATE_PRCLOOKUP_PROG_NFS_REQ;
-		NfsSend ();
+		ret = rpc_lookup_reply(PROG_MOUNT, pkt, len);
+		if (ret)
+			goto err_out;
+		nfs_state = STATE_PRCLOOKUP_PROG_NFS_REQ;
 		break;
 
 	case STATE_PRCLOOKUP_PROG_NFS_REQ:
-		rpc_lookup_reply (PROG_NFS, pkt, len);
-		NfsState = STATE_MOUNT_REQ;
-		NfsSend ();
+		ret = rpc_lookup_reply(PROG_NFS, pkt, len);
+		if (ret)
+			goto err_out;
+		nfs_state = STATE_MOUNT_REQ;
 		break;
 
 	case STATE_MOUNT_REQ:
-		if (nfs_mount_reply(pkt, len)) {
-			puts ("*** ERROR: Cannot mount\n");
-			/* just to be sure... */
-			NfsState = STATE_UMOUNT_REQ;
-			NfsSend ();
-		} else {
-			NfsState = STATE_LOOKUP_REQ;
-			NfsSend ();
-		}
+		ret = nfs_mount_reply(pkt, len);
+		if (ret)
+			goto err_out;
+
+		nfs_state = STATE_LOOKUP_REQ;
 		break;
 
 	case STATE_UMOUNT_REQ:
-		if (nfs_umountall_reply(pkt, len)) {
-			puts ("*** ERROR: Cannot umount\n");
-			NetState = NETLOOP_FAIL;
-		} else {
-			puts ("\ndone\n");
-			NetState = NfsDownloadState;
-		}
-		break;
+		ret = nfs_umountall_reply(pkt, len);
+		if (ret)
+			nfs_err = ret;
+		nfs_state = STATE_DONE;
+		return;
 
 	case STATE_LOOKUP_REQ:
-		if (nfs_lookup_reply(pkt, len)) {
-			puts ("*** ERROR: File lookup fail\n");
-			NfsState = STATE_UMOUNT_REQ;
-			NfsSend ();
-		} else {
-			NfsState = STATE_READ_REQ;
-			nfs_offset = 0;
-			nfs_len = NFS_READ_SIZE;
-			NfsSend ();
-		}
+		ret = nfs_lookup_reply(pkt, len);
+		if (ret)
+			goto err_umount;
+
+		nfs_state = STATE_READ_REQ;
+		nfs_offset = 0;
 		break;
 
 	case STATE_READLINK_REQ:
-		if (nfs_readlink_reply(pkt, len)) {
-			puts ("*** ERROR: Symlink fail\n");
-			NfsState = STATE_UMOUNT_REQ;
-			NfsSend ();
-		} else {
-#ifdef NFS_DEBUG
-			printf ("Symlink --> %s\n", nfs_path);
-#endif
-			nfs_filename = basename (nfs_path);
-			nfs_path     = dirname (nfs_path);
-
-			NfsState = STATE_MOUNT_REQ;
-			NfsSend ();
-		}
+		ret = nfs_readlink_reply(pkt, len);
+		if (ret)
+			goto err_umount;
+
+		debug("Symlink --> %s\n", nfs_path);
+
+		nfs_filename = basename(nfs_path);
+		nfs_path     = dirname(nfs_path);
+
+		nfs_state = STATE_MOUNT_REQ;
 		break;
 
 	case STATE_READ_REQ:
-		rlen = nfs_read_reply (pkt, len);
-		NetSetTimeout (NFS_TIMEOUT * SECOND, NfsTimeout);
-		if (rlen > 0) {
-			nfs_offset += rlen;
-			NfsSend ();
-		}
-		else if ((rlen == -NFSERR_ISDIR)||(rlen == -NFSERR_INVAL)) {
+		ret = nfs_read_reply(pkt, len);
+		nfs_timer_start = get_time_ns();
+		if (ret > 0)
+			nfs_offset += ret;
+		else if (ret == -EISDIR || ret == -EINVAL)
 			/* symbolic link */
-			NfsState = STATE_READLINK_REQ;
-			NfsSend ();
-		} else {
-			if ( ! rlen ) NfsDownloadState = NETLOOP_SUCCESS;
-			NfsState = STATE_UMOUNT_REQ;
-			NfsSend ();
-		}
+			nfs_state = STATE_READLINK_REQ;
+		else
+			goto err_umount;
+
 		break;
 	}
-}
 
+	nfs_send();
+
+	return;
+
+err_umount:
+	nfs_state = STATE_UMOUNT_REQ;
+	nfs_err = ret;
+	nfs_send();
+	return;
+
+err_out:
+	nfs_state = STATE_DONE;
+	nfs_err = ret;
+}
 
-void
-NfsStart (char *p)
+static void nfs_start(char *p)
 {
-#ifdef NFS_DEBUG
-	printf ("%s\n", __FUNCTION__);
-#endif
-	NfsDownloadState = NETLOOP_FAIL;
+	debug("%s\n", __func__);
 
-	NfsServerIP = NetServerIP;
 	nfs_path = (char *)nfs_path_buff;
 
-	if (nfs_path == NULL) {
-		NetState = NETLOOP_FAIL;
-		puts ("*** ERROR: Fail allocate memory\n");
-		return;
-	}
-
-	strcpy (nfs_path, p);
+	strcpy(nfs_path, p);
 
 	nfs_filename = basename (nfs_path);
 	nfs_path     = dirname (nfs_path);
 
-#if defined(CONFIG_NET_MULTI)
-	printf ("Using %s device\n", eth_get_name());
-#endif
+	printf("\nFilename '%s/%s'.\nLoading: ", nfs_path, nfs_filename);
 
-	puts ("File transfer via NFS from server "); print_IPaddr (NfsServerIP);
-	puts ("; our IP address is ");		    print_IPaddr (NetOurIP);
+	nfs_timer_start = get_time_ns();
 
-	/* Check if we need to send across this subnet */
-	if (NetOurGatewayIP && NetOurSubnetMask) {
-		IPaddr_t OurNet	    = NetOurIP	  & NetOurSubnetMask;
-		IPaddr_t ServerNet  = NetServerIP & NetOurSubnetMask;
+	nfs_state = STATE_PRCLOOKUP_PROG_MOUNT_REQ;
 
-		if (OurNet != ServerNet) {
-			puts ("; sending through gateway ");
-			print_IPaddr (NetOurGatewayIP) ;
-		}
-	}
-	printf ("\nFilename '%s/%s'.", nfs_path, nfs_filename);
-
-	NetSetTimeout (NFS_TIMEOUT * SECOND, NfsTimeout);
-	NetSetHandler (NfsHandler);
-
-	NfsTimeoutCount = 0;
-	NfsState = STATE_PRCLOOKUP_PROG_MOUNT_REQ;
-
-	/*FIX ME !!!*/
-	NfsOurPort = 1000;
-
-	/* zero out server ether in case the server ip has changed */
-	memset (NetServerEther, 0, 6);
-
-	NfsSend ();
+	nfs_send();
 }
 
 static int do_nfs(struct command *cmdtp, int argc, char *argv[])
 {
-	int   rcode = 0;
 	char  *localfile;
 	char  *remotefile;
 
@@ -728,23 +689,38 @@ static int do_nfs(struct command *cmdtp, int argc, char *argv[])
 		return 1;
 	}
 
-	if (NetLoopInit(NFS) < 0)
-		goto out;
+	nfs_con = net_udp_new(net_get_serverip(), 0, nfs_handler);
+	if (IS_ERR(nfs_con)) {
+		nfs_err = PTR_ERR(nfs_con);
+		goto err_udp;
+	}
+	net_udp_bind(nfs_con, 1000);
 
-	NfsStart(remotefile);
+	nfs_err = 0;
 
-	rcode = NetLoop();
-	if (rcode < 0) {
-		rcode = 1;
-		goto out;
-	}
+	nfs_start(remotefile);
 
-	/* NetLoop ok, update environment */
-	netboot_update_env();
+	while (nfs_state != STATE_DONE) {
+		if (ctrlc()) {
+			nfs_err = -EINTR;
+			break;
+		}
+		net_poll();
+		if (is_timeout(nfs_timer_start, NFS_TIMEOUT * SECOND))
+			break;
+	}
 
-out:
+	net_unregister(nfs_con);
+err_udp:
 	close(net_store_fd);
-	return rcode;
+	if (nfs_err) {
+		printf("NFS failed: %s\n", strerror(-nfs_err));
+		unlink(localfile);
+	}
+
+	printf("\n");
+
+	return nfs_err == 0 ? 0 : 1;
 }
 
 static const __maybe_unused char cmd_nfs_help[] =
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
